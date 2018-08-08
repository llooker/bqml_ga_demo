- dashboard: user_finder
  title: User Finder
  layout: newspaper
  elements:
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
      Minimum Propensity: roc_curve.threshold
    row: 5
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
      Minimum Propensity: roc_curve.threshold
    row: 8
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
      Minimum Propensity: roc_curve.threshold
    row: 2
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
      Minimum Propensity: future_purchase_prediction.predicted_will_purchase_in_future_probability
    row: 0
    col: 16
    width: 8
    height: 12
  - name: Recall
    type: text
    title_text: Recall
    body_text: This is a measure of how many of the total purchasers we will identify
      as purchasing in the future. If 100 people will purchase, recall is the percent
      of those people that appear in our list.
    row: 8
    col: 5
    width: 11
    height: 3
  - title: Total Users Likely to Purchase in 180 Days
    name: Total Users Likely to Purchase in 180 Days
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
      Minimum Propensity: future_purchase_prediction.predicted_will_purchase_in_future_probability
    row: 0
    col: 0
    width: 16
    height: 2
  - name: Precision
    type: text
    title_text: Precision
    body_text: This tells us how often the model is right when it claims someone *will*
      purchase. This is the percent of people on our list that will *actually* make
      a purchase.
    row: 5
    col: 5
    width: 11
    height: 3
  - name: Accuracy
    type: text
    title_text: Accuracy
    body_text: How often the model is correct at this propensity. This includes being
      right about future purchasing, and about *not* purchasing. It also includes
      how good we are at *not* including people on our list.
    row: 2
    col: 5
    width: 11
    height: 3
  filters:
  - name: Minimum Propensity
    title: Minimum Propensity
    type: field_filter
    default_value: ">=0.08"
    allow_multiple_values: true
    required: false
    model: bqml_ga_demo
    explore: roc_curve
    listens_to_filters: []
    field: roc_curve.threshold
