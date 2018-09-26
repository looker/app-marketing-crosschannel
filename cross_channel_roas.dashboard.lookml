- dashboard: cross_channel_roas
  title: Cross Channel - Return On Ad Spend
  extends: cross_channel_base
  elements:
  - title: Return On Ad Spend To Date
    name: Return On Ad Spend To Date
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_area
    fields:
    - fact.date_period_dynamic_grain
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    - fact.average_value_per_cost
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
    x_axis_reversed: false
    y_axis_reversed: false
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
        axisId: fact.average_cost_per_conversion
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
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
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
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    series_labels:
      fact.total_conversions: Conversions
      fact.total_clicks: Clicks
      fact.average_conversion_rate: Conversion Rate
      fact.average_cost_per_conversion: Cost Per Conversion
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
    width: 24
    height: 10
  - title: Platform Return On Ad Spend Change
    name: Platform Return On Ad Spend Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.average_value_per_cost
    - fact.total_conversionvalue
    - fact.total_cost
    - last_fact.average_value_per_cost
    - last_fact.total_conversionvalue
    - last_fact.total_cost
    - fact.average_value_per_cost_period_percent_change
    sorts:
    - fact.average_value_per_cost_period_percent_change_abs desc
    filters:
      fact.average_value_per_cost_period_percent_change_abs: NOT NULL
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
    - fact.total_conversionvalue
    - fact.total_cost
    - last_fact.total_conversionvalue
    - last_fact.total_cost
    - fact.average_value_per_cost_period_percent_change
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
      - id: last_fact.average_value_per_cost
        name: Prior Period
        axisId: last_fact.average_value_per_cost
      - id: fact.average_value_per_cost
        name: This Period
        axisId: fact.average_value_per_cost
    series_colors: {}
    colors:
    - "#a6b7ff"
    - "#7869df"
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
    height: 9
  - title: Channel Return On Ad Spend Change
    name: Channel Return On Ad Spend Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.channel
    - fact.average_value_per_cost
    - fact.total_conversionvalue
    - fact.total_cost
    - last_fact.average_value_per_cost
    - last_fact.total_conversionvalue
    - last_fact.total_cost
    - fact.average_value_per_cost_period_percent_change
    sorts:
    - fact.average_value_per_cost_period_percent_change_abs desc
    filters:
      fact.average_value_per_cost_period_percent_change_abs: NOT NULL
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
    - fact.total_conversionvalue
    - fact.total_cost
    - last_fact.total_conversionvalue
    - last_fact.total_cost
    - fact.average_value_per_cost_period_percent_change
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
      - id: last_fact.average_value_per_cost
        name: Prior Period
        axisId: last_fact.average_value_per_cost
      - id: fact.average_value_per_cost
        name: This Period
        axisId: fact.average_value_per_cost
    series_colors: {}
    colors:
    - "#a6b7ff"
    - "#7869df"
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
    col: 8
    width: 8
    height: 9
  - title: Campaign Return On Ad Spend Change
    name: Campaign Return On Ad Spend Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.campaign_name
    - fact.average_value_per_cost
    - fact.total_conversionvalue
    - fact.total_cost
    - last_fact.average_value_per_cost
    - last_fact.total_conversionvalue
    - last_fact.total_cost
    - fact.average_value_per_cost_period_percent_change
    sorts:
    - fact.average_value_per_cost_period_percent_change_abs desc
    filters:
      fact.average_value_per_cost_period_percent_change_abs: NOT NULL
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
    - fact.total_conversionvalue
    - fact.total_cost
    - last_fact.total_conversionvalue
    - last_fact.total_cost
    - fact.average_value_per_cost_period_percent_change
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
      - id: last_fact.average_value_per_cost
        name: Prior Period
        axisId: last_fact.average_value_per_cost
      - id: fact.average_value_per_cost
        name: This Period
        axisId: fact.average_value_per_cost
    series_colors: {}
    colors:
    - "#a6b7ff"
    - "#7869df"
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
  - title: Ad Group Return On Ad Spend Change
    name: Ad Group Return On Ad Spend Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.campaign_name
    - fact.ad_group_name
    - fact.average_value_per_cost
    - fact.total_conversionvalue
    - fact.total_cost
    - last_fact.average_value_per_cost
    - last_fact.total_conversionvalue
    - last_fact.total_cost
    - fact.average_value_per_cost_period_percent_change
    sorts:
    - fact.average_value_per_cost_period_percent_change_abs desc
    filters:
      fact.average_value_per_cost_period_percent_change_abs: NOT NULL
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
    - fact.total_conversionvalue
    - fact.total_cost
    - last_fact.total_conversionvalue
    - last_fact.total_cost
    - fact.average_value_per_cost_period_percent_change
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
      - id: last_fact.average_value_per_cost
        name: Prior Period
        axisId: last_fact.average_value_per_cost
      - id: fact.average_value_per_cost
        name: This Period
        axisId: fact.average_value_per_cost
    series_colors: {}
    colors:
    - "#a6b7ff"
    - "#7869df"
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
    row: 20
    col: 0
    width: 8
    height: 9
