- dashboard: cross_channel_clicks
  extends: cross_channel_base
  title: Cross Channel - Clicks
  layout: newspaper
  elements:
  - title: Clicks To Date
    name: Clicks To Date
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_column
    fields:
    - fact.date_period_dynamic_grain
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    - fact.total_clicks
    sorts:
    - fact.date_period_dynamic_grain
    limit: 500
    column_limit: 50
    stacking: ''
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
    show_value_labels: false
    label_density: 1
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_conversions: Conversions
      fact.total_clicks: Clicks
      fact.average_conversion_rate: Conversion Rate
      fact.average_cost_per_conversion: Cost Per Conversion
    series_types:
      fact.total_conversions: line
      fact.average_cost_per_conversion: line
      fact.average_conversion_rate: line
      fact.average_click_rate: line
      fact.average_cost_per_click: line
      fact.total_clicks: line
    limit_displayed_rows: false
    hidden_series:
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    y_axes:
    - label:
      orientation: left
      series:
      - id: fact.average_cost_per_conversion
        name: Cost Per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 66
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 63
    - label: ''
      orientation: left
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 81
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 78
    - label: ''
      orientation: left
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 92
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 89
    - label: ''
      orientation: left
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 103
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 100
    - label:
      orientation: right
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 114
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 117
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 111
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: false
    interpolation: linear
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
    discontinuous_nulls: false
    focus_on_hover: false
    hidden_fields: []
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
  - title: Channel Clicks Change
    name: Channel Clicks Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.channel
    - fact.total_cost
    - fact.total_clicks
    - last_fact.total_cost
    - last_fact.total_clicks
    - fact.total_clicks_period_delta
    filters:
      fact.total_clicks_period_delta_abs: ">0"
    sorts:
    - fact.total_clicks_period_delta_abs desc
    limit: 500
    column_limit: 50
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
    series_types: {}
    hidden_fields:
    - fact.platform
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_clicks_period_delta
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
      - id: fact.average_cost_per_click
        name: Period Fact
        axisId: fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 349
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 354
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 337
    series_colors: {}
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
  - title: Campaign Clicks Change
    name: Campaign Clicks Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.campaign_name
    - fact.total_cost
    - fact.total_clicks
    - last_fact.total_cost
    - last_fact.total_clicks
    - fact.total_clicks_period_delta
    filters:
      fact.total_clicks_period_delta_abs: ">0"
    sorts:
    - fact.total_clicks_period_delta_abs desc
    limit: 500
    column_limit: 50
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
    series_types: {}
    hidden_fields:
    - fact.platform
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_clicks_period_delta
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
      - id: fact.average_cost_per_click
        name: Period Fact
        axisId: fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 453
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 458
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 441
    series_colors: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
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
  - title: Ad Group Clicks Change
    name: Ad Group Clicks Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.campaign_name
    - fact.ad_group_name
    - fact.total_cost
    - fact.total_clicks
    - last_fact.total_cost
    - last_fact.total_clicks
    - fact.total_clicks_period_delta
    filters:
      fact.total_clicks_period_delta_abs: ">0"
    sorts:
    - fact.total_clicks_period_delta_abs desc
    limit: 500
    column_limit: 50
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
    series_types: {}
    hidden_fields:
    - fact.platform
    - fact.campaign_name
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_clicks_period_delta
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
      - id: fact.average_cost_per_click
        name: Period Fact
        axisId: fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 559
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 564
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 547
    series_colors: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
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
    height: 10
  - title: Platform Clicks Change
    name: Platform Clicks Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_column
    fields:
    - fact.platform
    - fact.total_cost
    - fact.total_clicks
    - last_fact.total_cost
    - last_fact.total_clicks
    - fact.total_clicks_period_delta
    filters:
      fact.total_clicks_period_delta_abs: ">0"
    sorts:
    - fact.total_clicks_period_delta_abs desc
    limit: 500
    column_limit: 50
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
    series_types: {}
    hidden_fields:
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_clicks_period_delta
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
      - id: fact.average_cost_per_click
        name: Period Fact
        axisId: fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 245
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
        __LINE_NUM: 250
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_clicks.dashboard.lookml
      __LINE_NUM: 233
    series_colors: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
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
