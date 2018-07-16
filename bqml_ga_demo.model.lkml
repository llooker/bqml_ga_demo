connection: "google_analytics2"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: bqml_datagroup {
  #retrain model every day
  max_cache_age: "1 hour"
  sql_trigger: SELECT CURRENT_DATE() ;;
}

explore: ga_sessions {
  extends: [ga_sessions_block]
  join: future_purchase_prediction {
    relationship: one_to_one
    sql_on: ${ga_sessions.visitId} = ${future_purchase_prediction.visitId} ;;
  }
}
