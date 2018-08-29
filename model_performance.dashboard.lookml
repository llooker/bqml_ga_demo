- dashboard: model_performance
  title: Model Performance
  layout: newspaper
  elements:
  - title: Loss Curve
    name: Loss Curve
    model: bqml_ga_demo
    explore: future_purchase_model_training_info
    type: looker_area
    fields:
    - future_purchase_model_training_info.loss
    - future_purchase_model_training_info.iteration
    sorts:
    - future_purchase_model_training_info.iteration
    limit: 500
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle_outline
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
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 15
    col: 14
    width: 10
    height: 6
  - title: Total Training Time (sec)
    name: Total Training Time (sec)
    model: bqml_ga_demo
    explore: future_purchase_model_training_info
    type: single_value
    fields:
    - future_purchase_model_training_info.total_training_time
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 17
    col: 0
    width: 6
    height: 2
  - title: Average Iteration Duration (sec)
    name: Average Iteration Duration (sec)
    model: bqml_ga_demo
    explore: future_purchase_model_training_info
    type: single_value
    fields:
    - future_purchase_model_training_info.average_iteration_time
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 19
    col: 0
    width: 6
    height: 2
  - title: Training Details
    name: Training Details
    model: bqml_ga_demo
    explore: future_purchase_model_training_info
    type: table
    fields:
    - future_purchase_model_training_info.iteration
    - future_purchase_model_training_info.duration_ms
    - future_purchase_model_training_info.learning_rate
    - future_purchase_model_training_info.eval_loss
    sorts:
    - future_purchase_model_training_info.iteration
    limit: 500
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: true
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
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
    point_style: none
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 15
    col: 6
    width: 8
    height: 6
  - title: Accuracy (static)
    name: Accuracy (static)
    model: bqml_ga_demo
    explore: future_purchase_model_evaluation
    type: single_value
    fields:
    - future_purchase_model_evaluation.accuracy
    sorts:
    - future_purchase_model_evaluation.accuracy
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 2
  - title: Recall (static)
    name: Recall (static)
    model: bqml_ga_demo
    explore: future_purchase_model_evaluation
    type: single_value
    fields:
    - future_purchase_model_evaluation.recall
    sorts:
    - future_purchase_model_evaluation.recall
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 2
  - title: Precision-Recall Curve
    name: Precision-Recall Curve
    model: bqml_ga_demo
    explore: roc_curve
    type: looker_line
    fields:
    - roc_curve.precision
    - roc_curve.recall
    sorts:
    - roc_curve.precision
    limit: 500
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_null_points: true
    interpolation: monotone
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: roc_curve.precision
        name: Precision
        axisId: roc_curve.precision
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_datetime_label: ''
    hide_legend: false
    listen: {}
    row: 4
    col: 8
    width: 8
    height: 6
  - title: F1 Score (static)
    name: F1 Score (static)
    model: bqml_ga_demo
    explore: future_purchase_model_evaluation
    type: single_value
    fields:
    - future_purchase_model_evaluation.f1_score
    sorts:
    - future_purchase_model_evaluation.f1_score
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 2
  - title: Total Iterations
    name: Total Iterations
    model: bqml_ga_demo
    explore: future_purchase_model_training_info
    type: single_value
    fields:
    - future_purchase_model_training_info.total_iterations
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 15
    col: 0
    width: 6
    height: 2
  - title: ROC Curve Details (use thresholds for filter values)
    name: ROC Curve Details (use thresholds for filter values)
    model: bqml_ga_demo
    explore: roc_curve
    type: table
    fields:
    - roc_curve.threshold
    - roc_curve.false_negatives
    - roc_curve.false_positives
    - roc_curve.true_negatives
    - roc_curve.true_positives
    sorts:
    - roc_curve.threshold
    limit: 500
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    listen: {}
    row: 10
    col: 0
    width: 24
    height: 3
  - title: True Positives
    name: True Positives
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.true_positives
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.true_positives
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Error Matrix Threshold: roc_curve.threshold
    row: 4
    col: 16
    width: 4
    height: 3
  - title: False Positive
    name: False Positive
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.false_positives
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.false_positives
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: "#ef0e5a"
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Error Matrix Threshold: roc_curve.threshold
    row: 4
    col: 20
    width: 4
    height: 3
  - title: True Negatives
    name: True Negatives
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.true_negatives
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.true_negatives
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Error Matrix Threshold: roc_curve.threshold
    row: 7
    col: 20
    width: 4
    height: 3
  - title: False Negatives
    name: False Negatives
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.false_negatives
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.false_negatives
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: "#ef0e5a"
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Error Matrix Threshold: roc_curve.threshold
    row: 7
    col: 16
    width: 4
    height: 3
  - title: Accuracy (threshold)
    name: Accuracy (threshold)
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
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Error Matrix Threshold: roc_curve.threshold
    row: 2
    col: 0
    width: 6
    height: 2
  - title: Recall (threshold)
    name: Recall (threshold)
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
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Error Matrix Threshold: roc_curve.threshold
    row: 2
    col: 6
    width: 6
    height: 2
  - title: Precision (threshold)
    name: Precision (threshold)
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
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Error Matrix Threshold: roc_curve.threshold
    row: 2
    col: 18
    width: 6
    height: 2
  - title: F1 (threshold)
    name: F1 (threshold)
    model: bqml_ga_demo
    explore: roc_curve
    type: single_value
    fields:
    - roc_curve.threshold_f1
    - roc_curve.threshold
    sorts:
    - roc_curve.threshold
    - roc_curve.threshold_f1
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
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
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Error Matrix Threshold: roc_curve.threshold
    row: 2
    col: 12
    width: 6
    height: 2
  - name: Training Metrics
    type: text
    title_text: Training Metrics
    subtitle_text: ___________________________________________________________________
    row: 13
    col: 0
    width: 24
    height: 2
  - title: ROC Curve
    name: ROC Curve
    model: bqml_ga_demo
    explore: roc_curve
    type: looker_line
    fields:
    - roc_curve.false_positives
    - roc_curve.false_negatives
    - roc_curve.true_negatives
    - roc_curve.total_true_positives
    sorts:
    - random_tpr desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: tpr
      label: TPR
      expression: "${roc_curve.total_true_positives}/(${roc_curve.total_true_positives}\
        \ + ${roc_curve.false_negatives})"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: _
      label: "-"
      expression: max(${roc_curve.total_true_positives})*(row()/max(row()))
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: fpr
      label: FPR
      expression: "${roc_curve.false_positives}/ (${roc_curve.false_positives} + ${roc_curve.true_negatives})"
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: number
    - table_calculation: random_tpr
      label: Random TPR
      expression: "${fpr}+(0*${roc_curve.total_true_positives})"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    hide_legend: true
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      _: "#d5d7db"
      random_tpr: "#B1B0B0"
    series_types: {}
    series_point_styles:
      random_tpr: diamond
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: roc_curve.total_true_positives
        name: Total True Positives
        axisId: roc_curve.total_true_positives
      - id: _
        name: "-"
        axisId: _
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
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
    reference_lines: []
    trend_lines: []
    show_null_points: true
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - roc_curve.true_negatives
    - roc_curve.false_negatives
    - roc_curve.false_positives
    - roc_curve.total_true_positives
    - _
    listen: {}
    row: 4
    col: 0
    width: 8
    height: 6
  filters:
  - name: Error Matrix Threshold
    title: Error Matrix Threshold
    type: number_filter
    default_value: ">=0.08"
    allow_multiple_values: true
    required: true
