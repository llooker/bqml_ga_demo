connection: "google_analytics2"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

datagroup: sweet_datagroup {
  #Rad datagroup, yo!
  max_cache_age: "1 hour"
  sql_trigger: SELECT CURRENT_DATE() ;;
}

explore: combined_input {

  from: input_one

  join: input_two {
    sql_on: ${combined_input.full_visitor_id} = ${input_two.fullvisitorid} ;;
    type: inner
    relationship: one_to_one
  }

}
