# DEPRECATED
# explore: train {}
# view: train {
#   derived_table: {
#     explore_source: ga_sessions {
#       column: fullVisitorId {}
#       # include this because bounces, etc. are aggregated
#       column: id {}
#       column: bounces_total { field: totals.bounces_total }
#       column: timeonsite_total { field: totals.timeonsite_total }
#       column: pageviews_total { field: totals.pageviews_total }
#       column: transactions_count { field: totals.transactions_count }
#       column: newvisits { field: totals.newVisits_total }
#       column: medium { field: trafficSource.medium }
#       column: channelGrouping {}
#       column: isMobile { field: device.isMobile }
#       column: country { field: geoNetwork.country }
#       column: visitStart_date {}
#       # derived_column: will_buy_later {
#       #   sql: IF(COUNTIF(transactions_count > 0 AND newvisits IS NULL)
#       # OVER(PARTITION BY fullVisitorId) > 0, 1, 0) ;;
#       # }
#       filters: {
#         field: ga_sessions.partition_date
#         value: "3 years"
#       }
#     }
#   }
#   dimension: 90_days_future_transactions {
#     type: number
#     sql:(SELECT SUM(base_table.totals_transactions_count)
#           FROM ${TABLE} as base_table
#           WHERE base_table.fullVisitorId = ${TABLE}.fullVisitorId
#           AND ${TABLE}.visitStart_date < base_table.visitStart_date
#           AND DATE_DIFF(base_table.visitStart_date, ${TABLE}.visitStart_date,DAY) < 90) ;;
#   }
#   measure: count {
#     type: count
#   }
# }
#
#
#
#
#
#
#
# # delete later
# view: test {
#   derived_table: {
#     explore_source: ga_sessions {
#       column: fullVisitorId {}
#       # include this because bounces, etc. are aggregated
#       column: id {}
#       column: bounces_total { field: totals.bounces_total }
#       column: timeonsite_total { field: totals.timeonsite_total }
#       column: pageviews_total { field: totals.pageviews_total }
#       column: transactions_count { field: totals.transactions_count }
#       column: newvisits { field: totals.newVisits_total }
#       column: medium { field: trafficSource.medium }
#       column: channelGrouping {}
#       column: isMobile { field: device.isMobile }
#       column: country { field: geoNetwork.country }
#       filters: {
#         field: ga_sessions.visitStart_date
#         value: "2017/05/01 to 2017/08/01"
#       }
#     }
#   }
# }
#
# view: purchase_regression {
#   derived_table: {
#     datagroup_trigger: sweet_datagroup
#     sql_create:
#       CREATE OR REPLACE MODEL ${SQL_TABLE_NAME}
#       OPTIONS(model_type='logistic_reg'
#         , labels=['will_buy_later']
#         ) AS
#       SELECT
#          * EXCEPT(fullVisitorId, id)
#       FROM ${train.SQL_TABLE_NAME};;
#   }
# }
#
# ######################## TRAINING INFORMATION #############################
# explore:  purchase_regression_evaluation {}
# explore: purchase_regression_training {}
#
# # VIEWS:
# view: purchase_regression_evaluation {
#   derived_table: {
#     sql: SELECT * FROM ml.EVALUATE(
#           MODEL ${purchase_regression.SQL_TABLE_NAME},
#           (SELECT * FROM ${train.SQL_TABLE_NAME}));;
#   }
#   dimension: recall {type: number}
#   dimension: accuracy {type: number}
#   dimension: f1_score {type: number}
#   dimension: log_loss {type: number}
#   dimension: roc_auc {type: number}
# }
#
# view: purchase_regression_training {
#   derived_table: {
#     sql: SELECT  * FROM ml.TRAINING_INFO(MODEL ${purchase_regression.SQL_TABLE_NAME});;
#   }
#   dimension: training_run {type: number}
#   dimension: iteration {type: number}
#   dimension: loss {type: number}
#   dimension: eval_loss {type: number}
#   dimension: duration_ms {label:"Duration (ms)" type: number}
#   dimension: learning_rate {type: number}
#   measure: iterations {type:count}
#   measure: total_loss {
#     type: sum
#     sql: ${loss} ;;
#   }
#   measure: total_training_time {
#     type: sum
#     label:"Total Training Time (sec)"
#     sql: ${duration_ms}/1000 ;;
#     value_format_name: decimal_1
#   }
#   measure: average_iteration_time {
#     type: average
#     label:"Average Iteration Time (sec)"
#     sql: ${duration_ms}/1000 ;;
#     value_format_name: decimal_1
#   }
#   set: detail {fields: [training_run,iteration,loss,eval_loss,duration_ms,learning_rate]}
# }
#
#
# ################################ TRUE OUTPUTS ############################
# explore:  purchase_prediction {}
# view: purchase_prediction {
#   derived_table: {
#     sql: SELECT * FROM ml.PREDICT(
#           MODEL ${purchase_regression.SQL_TABLE_NAME},
#           (SELECT * FROM ${test.SQL_TABLE_NAME}));;
#   }
#
#   dimension: full_visitor_id {
#     type: number
#   }
#
#   dimension: predicted_will_buy_later {
#     type: number
#   }
#
#   dimension: will_buy_later {
#     type: number
#   }
#
#   dimension: residual {
#     type:  number
#     sql: ${predicted_will_buy_later} - ${will_buy_later}  ;;
#   }
#
# #   dimension: residual_percent {
# #     type:  number
# #     value_format_name: percent_1
# #     sql: 1.0 * ${residual}/NULLIF(${trip_count},0)  ;;
# #   }
# #
# #   measure: total_trip_count {
# #     type: max
# #     sql: ${predicted_trip_count} ;;
# #   }
# #   measure: overall_residual {
# #     type: max
# #     sql: ${residual} ;;
# #   }
# #   measure: overall_residual_percent {
# #     type: max
# #     value_format_name: percent_1
# #     sql: ${residual_percent} ;;
# #   }
# }
