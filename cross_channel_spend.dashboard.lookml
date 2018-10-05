- dashboard: cross_channel_spend
  extends: cross_channel_base
  title: Cross Channel - Spend
  elements:
  - title: Spend To Date
    name: Spend To Date
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_area
    fields:
    - fact.date_day_of_period
    - fact.total_cost
    - fact.cumulative_spend
    - last_fact.total_cost
    - last_fact.cumulative_spend
    sorts:
    - fact.date_day_of_period
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
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 76
        axisId: fact.average_cost_per_conversion
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
      __LINE_NUM: 64
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    hidden_fields:
    - fact.total_cost
    - last_fact.total_cost
    column_group_spacing_ratio: 0
    column_spacing_ratio: 0
    listen:
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 16
    height: 11
  - title: Channel Spend Change
    name: Channel Spend Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.channel
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_cost_period_delta
    filters:
      fact.total_cost_period_delta_abs: ">0"
    sorts:
    - fact.total_cost_period_delta_abs desc
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
    - fact.total_cost_period_delta
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
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 271
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 276
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
      __LINE_NUM: 259
    series_colors: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#dc9d4f"
    - "#ea9895"
    - "#d06180"
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
    row: 11
    col: 8
    width: 8
    height: 9
  - title: Campaign Spend Change
    name: Campaign Spend Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.campaign_name
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_cost_period_delta
    filters:
      fact.total_cost_period_delta_abs: ">0"
    sorts:
    - fact.total_cost_period_delta_abs desc
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
    - fact.total_cost_period_delta
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
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 369
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 374
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
      __LINE_NUM: 357
    series_colors: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#dc9d4f"
    - "#ea9895"
    - "#d06180"
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
    row: 11
    col: 16
    width: 8
    height: 9
  - title: Ad Group Spend Change
    name: Ad Group Spend Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.campaign_name
    - fact.ad_group_name
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_cost_period_delta
    filters:
      fact.total_cost_period_delta_abs: ">0"
    sorts:
    - fact.total_cost_period_delta_abs desc
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
    - fact.total_cost_period_delta
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
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 468
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 473
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
      __LINE_NUM: 456
    series_colors: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#dc9d4f"
    - "#ea9895"
    - "#d06180"
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
    row: 11
    col: 0
    width: 8
    height: 9
  - title: Platform Spend Change
    name: Platform Spend Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_column
    fields:
    - fact.platform
    - fact.total_cost
    - last_fact.total_cost
    - fact.total_cost_period_delta
    filters:
      fact.total_cost_period_delta_abs: ">0"
    sorts:
    - fact.total_cost_period_delta_abs desc
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
    - fact.total_cost_period_delta
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
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 173
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
        __LINE_NUM: 178
      __FILE: 1500e16d0623b608c5494007d6fa89ca42c50730171fb302e68ea4336c1f6c1cd8bb115e/cross_channel_spend.dashboard.lookml
      __LINE_NUM: 161
    series_colors: {}
    colors:
    - "#7869df"
    - "#a6b7ff"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#dc9d4f"
    - "#ea9895"
    - "#d06180"
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
    height: 11
