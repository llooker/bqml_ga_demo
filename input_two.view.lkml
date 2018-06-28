view: input_two {
  derived_table: {
    sql: SELECT
          fullvisitorid,
          IF(COUNTIF(totals.transactions > 0 AND totals.newVisits IS NULL)
            OVER(PARTITION BY fullvisitorid) > 0, 1, 0)
              AS will_buy_later
        FROM
          `bigquery-public-data.google_analytics_sample.ga_sessions_*`
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fullvisitorid {
    type: string
    sql: ${TABLE}.fullvisitorid ;;
  }

  dimension: will_buy_later {
    type: number
    sql: ${TABLE}.will_buy_later ;;
  }

  set: detail {
    fields: [fullvisitorid, will_buy_later]
  }
}
