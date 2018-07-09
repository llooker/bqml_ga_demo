connection: "google_analytics2"

# include all the views
include: "*.view"

# include all the dashboards
# include: "*.dashboard"

datagroup: sweet_datagroup {
  max_cache_age: "1 hour"
  sql_trigger: SELECT CURRENT_DATE() ;;
}

explore: ga_sessions {
  extends: [ga_sessions_block]
  # join: future_sessions {
  #   relationship: one_to_many
  #   from: ga_sessions
  #   sql_on: ${ga_sessions.fullVisitorId} = ${future_sessions.fullVisitorId}
  #     AND ${ga_sessions.partition_date} < ${future_sessions.partition_date}
  #     AND DATE_DIFF(${future_sessions.partition_date},${ga_sessions.partition_date}, DAY) < 90;;
  # }
}
