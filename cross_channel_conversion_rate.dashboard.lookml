- dashboard: cross_channel_conversion_rate
  extends: cross_channel_base
  title: Cross Channel - Conversion Rate
  elements:
  - title: Conversion Rate To Date
    name: Conversion Rate To Date
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_line
    fields:
    - fact.date_period_dynamic_grain
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.total_conversions
    - fact.average_cost_per_click
    - fact.average_click_rate
    sorts:
    - fact.date_period_dynamic_grain
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 1
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    label: Average Cost per Conversion
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types: {}
    show_dropoff: false
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 77
        axisId: fact.average_cost_per_conversion
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
      __LINE_NUM: 65
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 96
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
      __LINE_NUM: 84
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    hidden_series:
    - fact.total_conversions
    - fact.average_cost_per_click
    - fact.average_click_rate
    hidden_fields: []
    column_group_spacing_ratio: 0
    column_spacing_ratio: 0
    listen:
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 16
    height: 10
  - title: Channel Conversion Rate Change
    name: Channel Conversion Rate Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.channel
    - fact.average_conversion_rate
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.average_conversion_rate
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    filters:
      fact.average_conversion_rate_period_percent_change_abs: NOT NULL
    sorts:
    - fact.average_conversion_rate_period_percent_change_abs desc
    limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - fact.platform
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    series_types: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Period Fact
        axisId: fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 342
      - id: last_fact.average_conversion_rate
        name: Last Period Fact
        axisId: last_fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 347
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
      __LINE_NUM: 330
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 10
    col: 8
    width: 8
    height: 9
  - title: Campaign Conversion Rate Change
    name: Campaign Conversion Rate Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.campaign_name
    - fact.average_conversion_rate
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.average_conversion_rate
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    filters:
      fact.average_conversion_rate_period_percent_change_abs: NOT NULL
    sorts:
    - fact.average_conversion_rate_period_percent_change_abs desc
    limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - fact.platform
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    series_types: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Period Fact
        axisId: fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 458
      - id: last_fact.average_conversion_rate
        name: Last Period Fact
        axisId: last_fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 463
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
      __LINE_NUM: 446
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 10
    col: 16
    width: 8
    height: 9
  - title: Ad Group Conversion Rate Change
    name: Ad Group Conversion Rate Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.campaign_name
    - fact.ad_group_name
    - fact.average_conversion_rate
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.average_conversion_rate
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    filters:
      fact.average_conversion_rate_period_percent_change_abs: NOT NULL
    sorts:
    - fact.average_conversion_rate_period_percent_change_abs desc
    limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - fact.platform
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    series_types: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Period Fact
        axisId: fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 575
      - id: last_fact.average_conversion_rate
        name: Last Period Fact
        axisId: last_fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 580
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
      __LINE_NUM: 563
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 10
    col: 0
    width: 8
    height: 9
  - title: Platform Conversion Rate Change
    name: Platform Conversion Rate Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_column
    fields:
    - fact.platform
    - fact.average_conversion_rate
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.average_conversion_rate
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    filters:
      fact.average_conversion_rate_period_percent_change_abs: NOT NULL
    sorts:
    - fact.average_conversion_rate_period_percent_change_abs desc
    limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    series_types: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Period Fact
        axisId: fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 226
      - id: last_fact.average_conversion_rate
        name: Last Period Fact
        axisId: last_fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
        __LINE_NUM: 231
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_conversion_rate.dashboard.lookml
      __LINE_NUM: 214
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 16
    width: 8
    height: 10
