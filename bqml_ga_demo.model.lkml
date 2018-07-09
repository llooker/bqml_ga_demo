connection: "google_analytics2"

# include all the views
include: "*.view"

# include all the dashboards
# include: "*.dashboard"

datagroup: bqml_datagroup {
  max_cache_age: "1 hour"
  sql_trigger: SELECT CURRENT_DATE() ;;
}

explore: ga_sessions {
  extends: [ga_sessions_block]
}
