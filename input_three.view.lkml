view: input_three {
  derived_table: {
    sql: SELECT
          fullVisitorId,
          IFNULL(totals.bounces, 0) AS bounces,
          IFNULL(totals.timeOnSite, 0) AS time_on_site,
          totals.pageviews,
          totals.transactions,
          trafficSource.source,
          trafficSource.medium,
          channelGrouping,
          device.isMobile,
          IFNULL(geoNetwork.country, "") AS country
        FROM
          `bigquery-public-data.google_analytics_sample.ga_sessions_*`
        WHERE
          totals.newVisits = 1 AND
          _TABLE_SUFFIX BETWEEN '20170501' AND '20170801'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: time_on_site {
    type: number
    sql: ${TABLE}.time_on_site ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channelGrouping ;;
  }

  dimension: is_mobile {
    type: string
    sql: ${TABLE}.isMobile ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  set: detail {
    fields: [
      full_visitor_id,
      bounces,
      time_on_site,
      pageviews,
      transactions,
      source,
      medium,
      channel_grouping,
      is_mobile,
      country
    ]
  }
}
