- dashboard: cross_channel_cost_per_conversion
  extends: cross_channel_base
  title: Cross Channel - Cost Per Conversion
  elements:
  - title: Cost Per Conversion To Date
    name: Cost Per Conversion To Date
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: false
    point_style: none
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
    series_types:
      fact.total_conversions: line
      fact.average_cost_per_conversion: line
      fact.average_conversion_rate: line
      fact.average_click_rate: line
      fact.average_cost_per_click: line
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
        name: Cost Per Conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 82
        axisId: fact.average_cost_per_conversion
      __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
      __LINE_NUM: 70
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
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 101
      __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
      __LINE_NUM: 89
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
    - fact.average_conversion_rate
    - fact.average_click_rate
    - fact.average_cost_per_click
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
  - title: Platform Cost Per Conversion Change
    name: Platform Cost Per Conversion Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.average_cost_per_conversion
    - fact.total_cost
    - fact.total_conversions
    - last_fact.average_cost_per_conversion
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion_period_percent_change
    sorts:
    - fact.average_cost_per_conversion_period_percent_change_abs desc
    filters:
      fact.average_cost_per_conversion_period_percent_change_abs: NOT NULL
    limit: 50
    column_limit: 50
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
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion_period_percent_change
    series_types: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors:
    - "#a6b7ff"
    - "#7869df"
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
    series_colors: {}
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
      - id: fact.average_cost_per_conversion
        name: Period Fact
        axisId: fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 836
      - id: last_fact.average_cost_per_conversion
        name: Last Period Fact
        axisId: last_fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 841
      __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
      __LINE_NUM: 824
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
    row: 19
    col: 0
    width: 8
    height: 9
  - title: Channel Cost Per Conversion Change
    name: Channel Cost Per Conversion Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.channel
    - fact.average_cost_per_conversion
    - fact.total_cost
    - fact.total_conversions
    - last_fact.average_cost_per_conversion
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion_period_percent_change
    sorts:
    - fact.average_cost_per_conversion_period_percent_change_abs desc
    filters:
      fact.average_cost_per_conversion_period_percent_change_abs: NOT NULL
    limit: 50
    column_limit: 50
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
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion_period_percent_change
    series_types: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors:
    - "#a6b7ff"
    - "#7869df"
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
    series_colors: {}
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
      - id: fact.average_cost_per_conversion
        name: Period Fact
        axisId: fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 836
      - id: last_fact.average_cost_per_conversion
        name: Last Period Fact
        axisId: last_fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 841
      __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
      __LINE_NUM: 824
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
  - title: Campaign Cost Per Conversion Change
    name: Campaign Cost Per Conversion Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.campaign_name
    - fact.average_cost_per_conversion
    - fact.total_cost
    - fact.total_conversions
    - last_fact.average_cost_per_conversion
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion_period_percent_change
    sorts:
    - fact.average_cost_per_conversion_period_percent_change_abs desc
    filters:
      fact.average_cost_per_conversion_period_percent_change_abs: NOT NULL
    limit: 50
    column_limit: 50
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
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion_period_percent_change
    series_types: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors:
    - "#a6b7ff"
    - "#7869df"
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
    series_colors: {}
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
      - id: fact.average_cost_per_conversion
        name: Period Fact
        axisId: fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 836
      - id: last_fact.average_cost_per_conversion
        name: Last Period Fact
        axisId: last_fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 841
      __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
      __LINE_NUM: 824
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
  - title: Ad Group Cost Per Conversion Change
    name: Ad Group Cost Per Conversion Change
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_bar
    fields:
    - fact.platform
    - fact.campaign_name
    - fact.ad_group_name
    - fact.average_cost_per_conversion
    - fact.total_cost
    - fact.total_conversions
    - last_fact.average_cost_per_conversion
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion_period_percent_change
    sorts:
    - fact.average_cost_per_conversion_period_percent_change_abs desc
    filters:
      fact.average_cost_per_conversion_period_percent_change_abs: NOT NULL
    limit: 50
    column_limit: 50
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
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - fact.average_cost_per_conversion_period_percent_change
    series_types: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors:
    - "#a6b7ff"
    - "#7869df"
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
    series_colors: {}
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
      - id: fact.average_cost_per_conversion
        name: Period Fact
        axisId: fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 836
      - id: last_fact.average_cost_per_conversion
        name: Last Period Fact
        axisId: last_fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
        __LINE_NUM: 841
      __FILE: app_marketing_analytics/cross_channel_cpa.dashboard.lookml
      __LINE_NUM: 824
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
