- dashboard: campaign_list_creator
  title: Campaign List Creator
  layout: newspaper
  elements:
  - name: Accuracy
    type: text
    title_text: Accuracy
    body_text: How often the model is correct at this propensity. This includes being
      right about future purchasing, and about *not* purchasing. It also includes
      how good we are at *not* including people on our list.
    row: 8
    col: 5
    width: 10
    height: 3
  - name: Precision
    type: text
    title_text: Precision
    body_text: This tells us how often the model is right when it claims someone *will*
      purchase. This is the percent of people on our list that will *actually* make
      a purchase.
    row: 11
    col: 5
    width: 10
    height: 3
  - name: Recall
    type: text
    title_text: Recall
    body_text: This is a measure of how many of the total purchasers we will identify
      as purchasing in the future. If 100 people will purchase, recall is the percent
      of those people that appear in our list.
    row: 14
    col: 5
    width: 10
    height: 3
  - title: Expected Precision
    name: Expected Precision
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.precision
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.precision
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Customer Propensity to Purchase: roc_curve.threshold
    row: 11
    col: 0
    width: 5
    height: 3
  - title: Expected Recall
    name: Expected Recall
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.recall
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.recall
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Customer Propensity to Purchase: roc_curve.threshold
    row: 14
    col: 0
    width: 5
    height: 3
  - title: Expected Accuracy
    name: Expected Accuracy
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.threshold_accuracy
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.threshold_accuracy
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Customer Propensity to Purchase: roc_curve.threshold
    row: 8
    col: 0
    width: 5
    height: 3
  - title: Details
    name: Details
    model: bqml_ga_demo
    explore: ga_sessions
    type: table
    fields:
    - ga_sessions.fullVisitorId
    - ga_sessions.channelGrouping
    - device.isMobile
    - trafficSource.medium
    - future_purchase_prediction.max_predicted_score
    filters:
      ga_sessions.partition_date: 400 days ago for 400 days
    sorts:
    - future_purchase_prediction.max_predicted_score desc
    limit: 5000
    listen:
      Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
    row: 8
    col: 15
    width: 9
    height: 9
  - name: Model Heuristics and Visitor-Level Output
    type: text
    title_text: Model Heuristics and Visitor-Level Output
    subtitle_text: ______________________________________________________________________________________________________________________________________
    row: 6
    col: 0
    width: 24
    height: 2
  - name: merge-FbY0DOj4c6Fmt5v9ywk9qW-2037
    type: text
    title_text: Addtl. Revenue
    subtitle_text: This item contains data that can no longer be displayed.
    body_text: This item contains results merged from two or more queries. This is
      currently not supported in LookML dashboards.
    row: 2
    col: 11
    width: 3
    height: 4
  - name: merge-aTVjCcVlKA1EgqNh6S3mGz-2046
    type: text
    title_text: Campaign Cost
    subtitle_text: This item contains data that can no longer be displayed.
    body_text: This item contains results merged from two or more queries. This is
      currently not supported in LookML dashboards.
    row: 2
    col: 14
    width: 3
    height: 4
  - name: merge-ksLeWMQ6LBXcYSLmH2FnnO-2043
    type: text
    title_text: Total Profit
    subtitle_text: This item contains data that can no longer be displayed.
    body_text: This item contains results merged from two or more queries. This is
      currently not supported in LookML dashboards.
    row: 2
    col: 17
    width: 3
    height: 4
  - name: merge-kjiY7N365CfCnKaxtTz58u-2035
    type: text
    title_text: Campaign ROI
    subtitle_text: This item contains data that can no longer be displayed.
    body_text: This item contains results merged from two or more queries. This is
      currently not supported in LookML dashboards.
    row: 2
    col: 20
    width: 4
    height: 4
  - name: Estimated Financial Impact of Targeted Campaign
    type: text
    title_text: Estimated Financial Impact of Targeted Campaign
    row: 0
    col: 11
    width: 13
    height: 2
  - title: Recommended Campaign Audience
    name: Recommended Campaign Audience
    model: bqml_ga_demo
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.total_visitors
    filters:
      ga_sessions.partition_date: 400 days ago for 400 days
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
    note_state: collapsed
    note_display: hover
    note_text: Total number of visitors that model predicts will purchase; defined
      as the number of visitors with a propensity to purchase that exceeds the selected
      threshold
    row: 0
    col: 0
    width: 11
    height: 2
  - name: merge-KhS3HCs4Dcn4IiYdNYH4Sy-2067
    type: text
    title_text: Incremental Customers
    subtitle_text: This item contains data that can no longer be displayed.
    body_text: This item contains results merged from two or more queries. This is
      currently not supported in LookML dashboards.
    row: 4
    col: 6
    width: 5
    height: 2
  - title: Expected Percent will Purchase
    name: Expected Percent will Purchase
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.precision
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.precision
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    value_format: 0.0%
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      Customer Propensity to Purchase: roc_curve.threshold
    row: 2
    col: 0
    width: 6
    height: 2
  - title: Conversion "Lift" Assumption
    name: Conversion "Lift" Assumption
    model: bqml_ga_demo
    explore: ga_sessions
    type: single_value
    fields:
    - future_purchase_prediction.estimated_conversion_boost_from_campaign
    filters:
      ga_sessions.partition_date: 400 days ago for 400 days
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    listen:
      Estimated Conversion "Lift" from Targeted Campaign (%): future_purchase_prediction.conversion_boost_from_campaign
    note_state: collapsed
    note_display: hover
    note_text: Conversion "lift" is the the incremental boost in converting visitors
      to purchasers resulting from the targeted campaign
    row: 4
    col: 0
    width: 6
    height: 2
  - name: merge-4DW9b879Qq2PSKBLcrNnPX-2066
    type: text
    title_text: Expected Purchasers
    subtitle_text: This item contains data that can no longer be displayed.
    body_text: This item contains results merged from two or more queries. This is
      currently not supported in LookML dashboards.
    row: 2
    col: 6
    width: 5
    height: 2
  filters:
  - name: Customer Propensity to Purchase
    title: Customer Propensity to Purchase
    type: field_filter
    default_value: ">=0.08"
    allow_multiple_values: true
    required: false
    model: bqml_ga_demo
    explore: roc_curve
    listens_to_filters: []
    field: roc_curve.threshold
  - name: Estimated Campaign Cost per Recipient ($)
    title: Estimated Campaign Cost per Recipient ($)
    type: field_filter
    default_value: '0.75'
    allow_multiple_values: true
    required: false
    model: bqml_ga_demo
    explore: ga_sessions
    listens_to_filters: []
    field: future_purchase_prediction.campaign_cost_per_recipient
  - name: Estimated Lifetime Revenue per Customer ($)
    title: Estimated Lifetime Revenue per Customer ($)
    type: field_filter
    default_value: '150.00'
    allow_multiple_values: true
    required: false
    model: bqml_ga_demo
    explore: ga_sessions
    listens_to_filters: []
    field: future_purchase_prediction.lifetime_revenue_per_customer
  - name: Estimated Conversion "Lift" from Targeted Campaign (%)
    title: Estimated Conversion "Lift" from Targeted Campaign (%)
    type: field_filter
    default_value: '0.30'
    allow_multiple_values: true
    required: false
    model: bqml_ga_demo
    explore: ga_sessions
    listens_to_filters: []
    field: future_purchase_prediction.conversion_boost_from_campaign
