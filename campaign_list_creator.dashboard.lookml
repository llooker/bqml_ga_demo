- dashboard: campaign_list_creator
  title: Campaign List Creator
  layout: newspaper
  elements:
  - title: Expected Recall
    name: Expected Recall
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields: [roc_curve.recall, roc_curve.threshold]
    sorts: [roc_curve.threshold, roc_curve.recall]
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
  - title: Expected Precision
    name: Expected Precision
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields: [roc_curve.precision, roc_curve.threshold]
    sorts: [roc_curve.threshold, roc_curve.precision]
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
  - title: Expected Accuracy
    name: Expected Accuracy
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields: [roc_curve.threshold_accuracy, roc_curve.threshold]
    sorts: [roc_curve.threshold, roc_curve.threshold_accuracy]
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
  - name: Estimated Financial Impact of Targeted Campaign
    type: text
    title_text: Estimated Financial Impact of Targeted Campaign
    row: 0
    col: 10
    width: 14
    height: 2
  - name: Model Heuristics and Visitor-Level Output
    type: text
    title_text: Model Heuristics and Visitor-Level Output
    subtitle_text: ______________________________________________________________________________________________________________________________________
    row: 6
    col: 0
    width: 24
    height: 2
  - title: Expected Percent will Purchase
    name: Expected Percent will Purchase
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields: [roc_curve.precision, roc_curve.threshold]
    sorts: [roc_curve.threshold, roc_curve.precision]
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
    note_state: collapsed
    note_display: hover
    note_text: Equal to model precision
    listen:
      Customer Propensity to Purchase: roc_curve.threshold
    row: 2
    col: 0
    width: 6
    height: 2
  - name: Expected Purchasers
    title: Expected Purchasers
    merged_queries:
    - model: bqml_ga_demo
      explore: roc_curve
      type: single_value
      fields: [roc_curve.precision, roc_curve.threshold]
      filters:
        roc_curve.threshold: ">=0.08"
      sorts: [roc_curve.threshold, roc_curve.precision]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
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
    - model: bqml_ga_demo
      explore: ga_sessions
      type: single_value
      fields: [ga_sessions.total_visitors, future_purchase_prediction.estimated_campaign_cost_per_recipient,
        future_purchase_prediction.estimated_conversion_boost_from_campaign, future_purchase_prediction.estimated_lifetime_revenue_per_customer]
      filters:
        ga_sessions.partition_date: ''
      limit: 500
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/New_York
      join_fields:
      - source_field_name: merge_placeholder
        field_name: merge_placeholder
    type: single_value
    hidden_fields: [merge_placeholder, roc_curve.threshold, roc_curve.precision, ga_sessions.total_visitors,
      future_purchase_prediction.estimated_campaign_cost_per_recipient, future_purchase_prediction.estimated_conversion_boost_from_campaign,
      future_purchase_prediction.estimated_lifetime_revenue_per_customer]
    series_types: {}
    dynamic_fields: [{table_calculation: est_new_customers, label: Est. New Customers,
        expression: "${ga_sessions.total_visitors}*${roc_curve.precision}", value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
    listen:
    - Customer Propensity to Purchase: roc_curve.threshold
    - Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
      Estimated Conversion "Lift" from Targeted Campaign (%): future_purchase_prediction.conversion_boost_from_campaign
    row: 2
    col: 6
    width: 4
    height: 2
  - name: Addtl Revenue
    title: Addtl Revenue
    merged_queries:
    - model: bqml_ga_demo
      explore: roc_curve
      type: single_value
      fields: [roc_curve.precision, roc_curve.threshold]
      filters:
        roc_curve.threshold: ">=0.08"
      sorts: [roc_curve.threshold, roc_curve.precision]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
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
    - model: bqml_ga_demo
      explore: ga_sessions
      type: single_value
      fields: [ga_sessions.total_visitors, future_purchase_prediction.estimated_campaign_cost_per_recipient,
        future_purchase_prediction.estimated_conversion_boost_from_campaign, future_purchase_prediction.estimated_lifetime_revenue_per_customer]
      limit: 500
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/New_York
      join_fields:
      - source_field_name: merge_placeholder
        field_name: merge_placeholder
    custom_color_enabled: true
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    type: single_value
    hidden_fields: [merge_placeholder, roc_curve.threshold, roc_curve.precision, ga_sessions.total_visitors,
      future_purchase_prediction.estimated_campaign_cost_per_recipient, future_purchase_prediction.estimated_conversion_boost_from_campaign,
      future_purchase_prediction.estimated_lifetime_revenue_per_customer, est_new_customers,
      est_profit, est_additional_cost]
    series_types: {}
    sorts: [roc_curve.threshold]
    dynamic_fields: [{table_calculation: est_new_customers, label: Est. New Customers,
        expression: "${ga_sessions.total_visitors}*${roc_curve.precision}*(1+${future_purchase_prediction.estimated_conversion_boost_from_campaign})",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: est_additional_revenue, label: Est.
          Additional Revenue, expression: "${future_purchase_prediction.estimated_lifetime_revenue_per_customer}*\
          \ (${est_new_customers} - \n    (${ga_sessions.total_visitors}*${roc_curve.precision})\n\
          \  )", value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: est_additional_cost, label: Est.
          Additional Cost, expression: "${ga_sessions.total_visitors}*${future_purchase_prediction.estimated_campaign_cost_per_recipient}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number},
      {table_calculation: est_profit, label: Est. Profit, expression: "${est_additional_revenue}\
          \ - ${est_additional_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: est_roi, label: Est.
          ROI, expression: "${est_profit} / ${est_additional_cost}", value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}]
    listen:
    - Customer Propensity to Purchase: roc_curve.threshold
    - Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
      Estimated Campaign Cost per Recipient ($): future_purchase_prediction.campaign_cost_per_recipient
      Estimated Lifetime Revenue per Customer ($): future_purchase_prediction.lifetime_revenue_per_customer
      Estimated Conversion "Lift" from Targeted Campaign (%): future_purchase_prediction.conversion_boost_from_campaign
    row: 2
    col: 10
    width: 4
    height: 4
  - name: Campaign Cost
    title: Campaign Cost
    merged_queries:
    - model: bqml_ga_demo
      explore: roc_curve
      type: single_value
      fields: [roc_curve.precision, roc_curve.threshold]
      filters:
        roc_curve.threshold: ">=0.08"
      sorts: [roc_curve.threshold, roc_curve.precision]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
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
    - model: bqml_ga_demo
      explore: ga_sessions
      type: single_value
      fields: [ga_sessions.total_visitors, future_purchase_prediction.estimated_campaign_cost_per_recipient,
        future_purchase_prediction.estimated_conversion_boost_from_campaign, future_purchase_prediction.estimated_lifetime_revenue_per_customer]
      limit: 500
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/New_York
      join_fields:
      - source_field_name: merge_placeholder
        field_name: merge_placeholder
    custom_color_enabled: true
    custom_color: "#8b2222"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    type: single_value
    hidden_fields: [merge_placeholder, roc_curve.threshold, roc_curve.precision, ga_sessions.total_visitors,
      future_purchase_prediction.estimated_campaign_cost_per_recipient, future_purchase_prediction.estimated_conversion_boost_from_campaign,
      future_purchase_prediction.estimated_lifetime_revenue_per_customer, est_new_customers,
      est_additional_revenue]
    series_types: {}
    sorts: [roc_curve.threshold]
    dynamic_fields: [{table_calculation: est_new_customers, label: Est. New Customers,
        expression: "${ga_sessions.total_visitors}*${roc_curve.precision}*(1+${future_purchase_prediction.estimated_conversion_boost_from_campaign})",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: est_additional_revenue, label: Est.
          Additional Revenue, expression: "${future_purchase_prediction.estimated_lifetime_revenue_per_customer}*\
          \ (${est_new_customers} - \n    (${ga_sessions.total_visitors}*${roc_curve.precision})\n\
          \  )", value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: est_additional_cost, label: Est.
          Additional Cost, expression: "${ga_sessions.total_visitors}*${future_purchase_prediction.estimated_campaign_cost_per_recipient}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    listen:
    - Customer Propensity to Purchase: roc_curve.threshold
    - Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
      Estimated Campaign Cost per Recipient ($): future_purchase_prediction.campaign_cost_per_recipient
      Estimated Lifetime Revenue per Customer ($): future_purchase_prediction.lifetime_revenue_per_customer
      Estimated Conversion "Lift" from Targeted Campaign (%): future_purchase_prediction.conversion_boost_from_campaign
    row: 2
    col: 14
    width: 3
    height: 4
  - name: Total Profit
    title: Total Profit
    merged_queries:
    - model: bqml_ga_demo
      explore: roc_curve
      type: single_value
      fields: [roc_curve.precision, roc_curve.threshold]
      filters:
        roc_curve.threshold: ">=0.08"
      sorts: [roc_curve.threshold, roc_curve.precision]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
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
    - model: bqml_ga_demo
      explore: ga_sessions
      type: single_value
      fields: [ga_sessions.total_visitors, future_purchase_prediction.estimated_campaign_cost_per_recipient,
        future_purchase_prediction.estimated_conversion_boost_from_campaign, future_purchase_prediction.estimated_lifetime_revenue_per_customer]
      limit: 500
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/New_York
      join_fields:
      - source_field_name: merge_placeholder
        field_name: merge_placeholder
    custom_color_enabled: true
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    type: single_value
    hidden_fields: [merge_placeholder, roc_curve.threshold, roc_curve.precision, ga_sessions.total_visitors,
      future_purchase_prediction.estimated_campaign_cost_per_recipient, future_purchase_prediction.estimated_conversion_boost_from_campaign,
      future_purchase_prediction.estimated_lifetime_revenue_per_customer, est_new_customers,
      est_additional_revenue, est_additional_cost]
    series_types: {}
    sorts: [roc_curve.threshold]
    dynamic_fields: [{table_calculation: est_new_customers, label: Est. New Customers,
        expression: "${ga_sessions.total_visitors}*${roc_curve.precision}*(1+${future_purchase_prediction.estimated_conversion_boost_from_campaign})",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: est_additional_revenue, label: Est.
          Additional Revenue, expression: "${future_purchase_prediction.estimated_lifetime_revenue_per_customer}*\
          \ (${est_new_customers} - \n    (${ga_sessions.total_visitors}*${roc_curve.precision})\n\
          \  )", value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: est_additional_cost, label: Est.
          Additional Cost, expression: "${ga_sessions.total_visitors}*${future_purchase_prediction.estimated_campaign_cost_per_recipient}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number},
      {table_calculation: est_profit, label: Est. Profit, expression: "${est_additional_revenue}\
          \ - ${est_additional_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}]
    listen:
    - Customer Propensity to Purchase: roc_curve.threshold
    - Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
      Estimated Campaign Cost per Recipient ($): future_purchase_prediction.campaign_cost_per_recipient
      Estimated Lifetime Revenue per Customer ($): future_purchase_prediction.lifetime_revenue_per_customer
      Estimated Conversion "Lift" from Targeted Campaign (%): future_purchase_prediction.conversion_boost_from_campaign
    row: 2
    col: 17
    width: 4
    height: 4
  - title: Conversion "Lift" Assumption
    name: Conversion "Lift" Assumption
    model: bqml_ga_demo
    explore: ga_sessions
    type: single_value
    fields: [future_purchase_prediction.estimated_conversion_boost_from_campaign]
    filters:
      ga_sessions.partition_date: ''
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
    note_state: collapsed
    note_display: hover
    note_text: Conversion "lift" is the the incremental boost in converting visitors
      to purchasers resulting from the targeted campaign
    listen:
      Estimated Conversion "Lift" from Targeted Campaign (%): future_purchase_prediction.conversion_boost_from_campaign
    row: 4
    col: 0
    width: 6
    height: 2
  - name: Incremental Customers
    title: Incremental Customers
    merged_queries:
    - model: bqml_ga_demo
      explore: roc_curve
      type: single_value
      fields: [roc_curve.precision, roc_curve.threshold]
      filters:
        roc_curve.threshold: ">=0.08"
      sorts: [roc_curve.threshold, roc_curve.precision]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
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
    - model: bqml_ga_demo
      explore: ga_sessions
      type: single_value
      fields: [ga_sessions.total_visitors, future_purchase_prediction.estimated_campaign_cost_per_recipient,
        future_purchase_prediction.estimated_conversion_boost_from_campaign, future_purchase_prediction.estimated_lifetime_revenue_per_customer]
      filters:
        ga_sessions.partition_date: ''
      limit: 500
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/New_York
      join_fields:
      - source_field_name: merge_placeholder
        field_name: merge_placeholder
    type: single_value
    hidden_fields: [merge_placeholder, roc_curve.threshold, roc_curve.precision, ga_sessions.total_visitors,
      future_purchase_prediction.estimated_campaign_cost_per_recipient, future_purchase_prediction.estimated_conversion_boost_from_campaign,
      future_purchase_prediction.estimated_lifetime_revenue_per_customer]
    series_types: {}
    dynamic_fields: [{table_calculation: est_net_new_customers, label: Est. Net New
          Customers, expression: "${ga_sessions.total_visitors}*${roc_curve.precision}*(1+${future_purchase_prediction.estimated_conversion_boost_from_campaign})\n\
          \n- (${ga_sessions.total_visitors}*${roc_curve.precision})", value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
    listen:
    - Customer Propensity to Purchase: roc_curve.threshold
    - Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
      Estimated Conversion "Lift" from Targeted Campaign (%): future_purchase_prediction.conversion_boost_from_campaign
    row: 4
    col: 6
    width: 4
    height: 2
  - name: Campaign ROI
    title: Campaign ROI
    merged_queries:
    - model: bqml_ga_demo
      explore: roc_curve
      type: single_value
      fields: [roc_curve.precision, roc_curve.threshold]
      filters:
        roc_curve.threshold: ">=0.08"
      sorts: [roc_curve.threshold, roc_curve.precision]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
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
    - model: bqml_ga_demo
      explore: ga_sessions
      type: single_value
      fields: [ga_sessions.total_visitors, future_purchase_prediction.estimated_campaign_cost_per_recipient,
        future_purchase_prediction.estimated_conversion_boost_from_campaign, future_purchase_prediction.estimated_lifetime_revenue_per_customer]
      limit: 500
      dynamic_fields: [{table_calculation: merge_placeholder, label: Merge_Placeholder,
          expression: '"Merge"', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, _type_hint: string}]
      query_timezone: America/New_York
      join_fields:
      - source_field_name: merge_placeholder
        field_name: merge_placeholder
    custom_color_enabled: true
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    type: single_value
    hidden_fields: [merge_placeholder, roc_curve.threshold, roc_curve.precision, ga_sessions.total_visitors,
      future_purchase_prediction.estimated_campaign_cost_per_recipient, future_purchase_prediction.estimated_conversion_boost_from_campaign,
      future_purchase_prediction.estimated_lifetime_revenue_per_customer, est_new_customers,
      est_additional_revenue, est_additional_cost, est_profit]
    series_types: {}
    dynamic_fields: [{table_calculation: est_new_customers, label: Est. New Customers,
        expression: "${ga_sessions.total_visitors}*${roc_curve.precision}*(1+${future_purchase_prediction.estimated_conversion_boost_from_campaign})",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: est_additional_revenue, label: Est.
          Additional Revenue, expression: "${future_purchase_prediction.estimated_lifetime_revenue_per_customer}*\
          \ (${est_new_customers} - \n    (${ga_sessions.total_visitors}*${roc_curve.precision})\n\
          \  )", value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: est_additional_cost, label: Est.
          Additional Cost, expression: "${ga_sessions.total_visitors}*${future_purchase_prediction.estimated_campaign_cost_per_recipient}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number},
      {table_calculation: est_profit, label: Est. Profit, expression: "${est_additional_revenue}\
          \ - ${est_additional_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: est_roi, label: Est.
          ROI, expression: "${est_profit} / ${est_additional_cost}", value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}]
    listen:
    - Customer Propensity to Purchase: roc_curve.threshold
    - Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
      Estimated Campaign Cost per Recipient ($): future_purchase_prediction.campaign_cost_per_recipient
      Estimated Lifetime Revenue per Customer ($): future_purchase_prediction.lifetime_revenue_per_customer
      Estimated Conversion "Lift" from Targeted Campaign (%): future_purchase_prediction.conversion_boost_from_campaign
    row: 2
    col: 21
    width: 3
    height: 4
  - title: Recommended Campaign Audience Details
    name: Recommended Campaign Audience Details
    model: bqml_ga_demo
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.fullVisitorId, ga_sessions.channelGrouping, device.isMobile,
      trafficSource.medium, future_purchase_prediction.max_predicted_score]
    sorts: [future_purchase_prediction.max_predicted_score desc]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      future_purchase_prediction.max_predicted_score: Propensity to Purchase
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    truncate_column_names: false
    series_types: {}
    listen:
      Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
    row: 8
    col: 15
    width: 9
    height: 9
  - title: Recommended Campaign Audience
    name: Recommended Campaign Audience
    model: bqml_ga_demo
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: ''
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
    note_state: collapsed
    note_display: hover
    note_text: Total number of visitors that model predicts will purchase; defined
      as the number of visitors with a propensity to purchase that exceeds the selected
      threshold
    listen:
      Customer Propensity to Purchase: future_purchase_prediction.predicted_will_purchase_in_future_probability
    row: 0
    col: 0
    width: 10
    height: 2
  filters:
  - name: Customer Propensity to Purchase
    title: Customer Propensity to Purchase
    type: field_filter
    default_value: ">=0.65"
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
