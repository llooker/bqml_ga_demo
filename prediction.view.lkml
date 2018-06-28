view: input {
  derived_table: {
    explore_source: combined_input {
      column: full_visitor_id {}
      column: bounces {}
      column: time_on_site {}
      column: pageviews {}
      column: transactions {}
      column: medium {}
      column: channel_grouping {}
      column: is_mobile {}
      column: country {}
      column: will_buy_later {field: input_two.will_buy_later}
    }
  }
}

view: purchase_regression {
  derived_table: {
    datagroup_trigger: sweet_datagroup
    sql_create:
      CREATE OR REPLACE MODEL ${SQL_TABLE_NAME}
      OPTIONS(model_type='logistic_reg'
        , labels=['will_buy_later']
        ) AS
      SELECT
         * EXCEPT(full_visitor_id)
      FROM ${input.SQL_TABLE_NAME};;
  }
}

######################## TRAINING INFORMATION #############################
explore:  purchase_regression_evaluation {}
explore: purchase_regression_training {}

# VIEWS:
view: purchase_regression_evaluation {
  derived_table: {
    sql: SELECT * FROM ml.EVALUATE(
          MODEL ${purchase_regression.SQL_TABLE_NAME},
          (SELECT * FROM ${input.SQL_TABLE_NAME}));;
  }
  dimension: recall {type: number}
  dimension: accuracy {type: number}
  dimension: f1_score {type: number}
  dimension: log_loss {type: number}
  dimension: roc_auc {type: number}
}

view: purchase_regression_training {
  derived_table: {
    sql: SELECT  * FROM ml.TRAINING_INFO(MODEL ${purchase_regression.SQL_TABLE_NAME});;
  }
  dimension: training_run {type: number}
  dimension: iteration {type: number}
  dimension: loss {type: number}
  dimension: eval_loss {type: number}
  dimension: duration_ms {label:"Duration (ms)" type: number}
  dimension: learning_rate {type: number}
  measure: iterations {type:count}
  measure: total_loss {
    type: sum
    sql: ${loss} ;;
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
  set: detail {fields: [training_run,iteration,loss,eval_loss,duration_ms,learning_rate]}
}


################################ TRUE OUTPUTS ############################
explore:  purchase_prediction {}
view: purchase_prediction {
  derived_table: {
    sql: SELECT * FROM ml.PREDICT(
          MODEL ${purchase_regression.SQL_TABLE_NAME},
          (SELECT * FROM ${input_three.SQL_TABLE_NAME}));;
  }

  dimension: full_visitor_id {
    type: number
  }

  dimension: predicted_will_buy_later {
    type: number
  }

  dimension: will_buy_later {
    type: number
  }

  dimension: residual {
    type:  number
    sql: ${predicted_will_buy_later} - ${will_buy_later}  ;;
  }

#   dimension: residual_percent {
#     type:  number
#     value_format_name: percent_1
#     sql: 1.0 * ${residual}/NULLIF(${trip_count},0)  ;;
#   }
#
#   measure: total_trip_count {
#     type: max
#     sql: ${predicted_trip_count} ;;
#   }
#   measure: overall_residual {
#     type: max
#     sql: ${residual} ;;
#   }
#   measure: overall_residual_percent {
#     type: max
#     value_format_name: percent_1
#     sql: ${residual_percent} ;;
#   }
}
