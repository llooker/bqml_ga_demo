######################## TRAINING/TESTING INPUTS #############################
view: training_input {
  derived_table: {
    explore_source: ga_sessions {
      column: visitId {}
      column: fullVisitorId {}
      column: medium { field: trafficSource.medium }
      column: channelGrouping {}
      column: isMobile { field: device.isMobile }
      column: country { field: geoNetwork.country }
      column: bounces_total { field: totals.bounces_total }
      column: pageviews_total { field: totals.pageviews_total }
      column: transactions_count { field: totals.transactions_count }
      column: first_time_visitors {}
      column: will_purchase_in_future {}
      filters: {
        field: ga_sessions.partition_date
        value: "720 days ago for 360 days" #"720 days ago for 630 days"
      }
      filters: {
        field: ga_sessions.prediction_window_days
        value: "180"
      }
    }
  }
}

view: testing_input {
  derived_table: {
    explore_source: ga_sessions {
      column: visitId {}
      column: fullVisitorId {}
      column: medium { field: trafficSource.medium }
      column: channelGrouping {}
      column: isMobile { field: device.isMobile }
      column: country { field: geoNetwork.country }
      column: bounces_total { field: totals.bounces_total }
      column: pageviews_total { field: totals.pageviews_total }
      column: transactions_count { field: totals.transactions_count }
      column: first_time_visitors {}
      column: will_purchase_in_future {}
      filters: {
        field: ga_sessions.partition_date
        value: "360 days ago for 360 days"
      }
      filters: {
        field: ga_sessions.prediction_window_days
        value: "180"
      }
    }
  }
}
######################## MODEL #############################

view: future_purchase_model {
  derived_table: {
    datagroup_trigger: sweet_datagroup
    sql_create:
      CREATE OR REPLACE MODEL ${SQL_TABLE_NAME}
      OPTIONS(model_type='logistic_reg'
        , labels=['will_purchase_in_future']
        ) AS
      SELECT
         * EXCEPT(fullVisitorId, visitId)
      FROM ${training_input.SQL_TABLE_NAME};;
  }
}

######################## TRAINING INFORMATION #############################
explore:  future_purchase_model_evaluation {}
explore: future_purchase_model_training_info {}
explore: roc_curve {}

# VIEWS:
view: future_purchase_model_evaluation {
  derived_table: {
    sql: SELECT * FROM ml.EVALUATE(
          MODEL ${future_purchase_model.SQL_TABLE_NAME},
          (SELECT * FROM ${testing_input.SQL_TABLE_NAME}));;
  }
  dimension: recall {type: number value_format_name:percent_2}
  dimension: accuracy {type: number value_format_name:percent_2}
  dimension: f1_score {type: number value_format_name:percent_3}
  dimension: log_loss {type: number}
  dimension: roc_auc {type: number}
}

view: roc_curve {
  derived_table: {
    sql: SELECT * FROM ml.ROC_CURVE(
        MODEL ${future_purchase_model.SQL_TABLE_NAME},
        (SELECT * FROM ${testing_input.SQL_TABLE_NAME}));;
  }
  dimension: threshold {type: number}
  dimension: recall {type: number value_format_name: percent_2}
  dimension: false_positive_rate {type: number}
  dimension: true_positives {type: number }
  dimension: false_positives {type: number}
  dimension: true_negatives {type: number}
  dimension: false_negatives {type: number }
  dimension: precision {
    type:  number
    value_format_name: percent_2
    sql:  ${true_positives} / NULLIF((${true_positives} + ${false_positives}),0);;
  }
  measure: total_false_positives {
    type: sum
    sql: ${false_positives} ;;
  }
  measure: total_true_positives {
    type: sum
    sql: ${true_positives} ;;
  }
  dimension: threshold_accuracy {
    type: number
    value_format_name: percent_2
    sql:  1.0*(${true_positives} + ${true_negatives}) / NULLIF((${true_positives} + ${true_negatives} + ${false_positives} + ${false_negatives}),0);;
  }
  dimension: threshold_f1 {
    type: number
    value_format_name: percent_3
    sql: 2.0*${recall}*${precision} / NULLIF((${recall}+${precision}),0);;
  }
}

view: future_purchase_model_training_info {
  derived_table: {
    sql: SELECT  * FROM ml.TRAINING_INFO(MODEL ${future_purchase_model.SQL_TABLE_NAME});;
  }
  dimension: training_run {type: number}
  dimension: iteration {type: number}
  dimension: loss_raw {sql: ${TABLE}.loss;; type: number hidden:yes}
  dimension: eval_loss {type: number}
  dimension: duration_ms {label:"Duration (ms)" type: number}
  dimension: learning_rate {type: number}
  measure: total_iterations {
    type: count
  }
  measure: loss {
    value_format_name: decimal_2
    type: sum
    sql:  ${loss_raw} ;;
  }
  measure: total_training_time {
    type: sum
    label:"Total Training Time (sec)"
    sql: ${duration_ms}/1000 ;;
    value_format_name: decimal_1
  }
  measure: average_iteration_time {
    type: average
    label:"Average Iteration Time (sec)"
    sql: ${duration_ms}/1000 ;;
    value_format_name: decimal_1
  }
}


explore:  future_purchase_prediction {}
view: future_purchase_prediction {
  derived_table: {
    sql: SELECT * FROM ml.PREDICT(
          MODEL ${future_purchase_model.SQL_TABLE_NAME},
          (SELECT * FROM ${testing_input.SQL_TABLE_NAME}));;
  }
  dimension: predicted_will_purchase_in_future {
    type: number
  }

}
