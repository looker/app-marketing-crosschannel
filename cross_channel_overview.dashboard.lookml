- dashboard: cross_channel_overview
  extends: cross_channel_base
  title: Digital Marketing Overview
  layout: newspaper
  elements:
  - title: Spend
    name: Spend Trend
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_area
    fields:
    - fact.date_period_dynamic_grain
    - fact.total_cost
    - fact.total_impressions
    - fact.total_clicks
    - fact.total_conversions
    - fact.platform
    pivots:
    - fact.platform
    sorts:
    - fact.platform
    - fact.date_period_dynamic_grain desc
    limit: 500
    column_limit: 50
    stacking: normal
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
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    series_types:
      fact.average_cost_per_conversion: line
      fact.total_impressions: line
      fact.total_clicks: line
      fact.average_conversion_rate: line
    limit_displayed_rows: false
    hidden_series:
    - Facebook Ads - fact.total_impressions
    - Facebook Ads - fact.total_clicks
    - Facebook Ads - fact.total_conversions
    - Google Ads - fact.total_impressions
    - Google Ads - fact.total_clicks
    - Google Ads - fact.total_conversions
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: LinkedIn - fact.total_cost
        name: LinkedIn
        axisId: fact.total_cost
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 2020
      - id: Google - fact.total_cost
        name: Google
        axisId: fact.total_cost
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 2023
      - id: Facebook - fact.total_cost
        name: Facebook
        axisId: fact.total_cost
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 2026
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat: "$0"
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 2017
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
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
    show_dropoff: true
    focus_on_hover: false
    hidden_fields:
    - fact.total_impressions
    - fact.total_clicks
    - fact.total_conversions
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 0
    col: 8
    width: 16
    height: 8
  - title: Spend
    name: Spend Pie
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_pie
    fields:
    - fact.total_cost
    - fact.platform
    sorts:
    - fact.platform
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
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
    series_labels:
      fact.total_cost: Spend
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
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1184
        axisId: fact.average_cost_per_conversion
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1172
    - label:
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
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1203
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1191
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
      - id: fact.total_impressions
        name: Impressions
        axisId: fact.total_impressions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1222
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1210
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
      - id: fact.total_cost
        name: Cost
        axisId: fact.total_cost
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1241
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1229
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
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1260
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1248
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    hidden_series:
    - fact.average_cost_per_conversion
    hidden_fields:
    column_group_spacing_ratio: 0
    column_spacing_ratio: 0
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 0
    col: 0
    width: 8
    height: 5
  - title: Spend
    name: Spend
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: single_value
    fields:
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_cost_change
      label: Total Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    single_value_title: Spend
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
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
    show_x_axis_label: true
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
    - last_fact.total_cost
    - fact.total_conversions
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - click_through_rate_percent_change
    - conversion_rate_percent_change
    - cost_per_click_percent_change
    - cost_per_conversion_percent_change
    - total_conversion_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 5
    col: 0
    width: 8
    height: 3
  - title: CPM
    name: CPM Trend
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_line
    fields:
    - fact.date_period_dynamic_grain
    - fact.platform
    - fact.average_cost_per_impression
    pivots:
    - fact.platform
    sorts:
    - fact.date_period_dynamic_grain desc
    - fact.platform
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
    label_density: 25
    legend_position: center
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    series_types:
      fact.total_clicks: area
    limit_displayed_rows: false
    hidden_series:
    - fact.average_click_rate
    - fact.total_clicks
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: LinkedIn - fact.average_cost_per_impression
        name: LinkedIn
        axisId: fact.average_cost_per_impression
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1786
      - id: Google - fact.average_cost_per_impression
        name: Google
        axisId: fact.average_cost_per_impression
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1789
      - id: Facebook - fact.average_cost_per_impression
        name: Facebook
        axisId: fact.average_cost_per_impression
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1792
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1783
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
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
    show_dropoff: true
    focus_on_hover: false
    hidden_fields: []
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 8
    col: 6
    width: 6
    height: 3
  - title: Impressions
    name: Impressions Trend
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_line
    fields:
    - fact.date_period_dynamic_grain
    - fact.platform
    - fact.total_impressions
    pivots:
    - fact.platform
    sorts:
    - fact.date_period_dynamic_grain desc
    - fact.platform
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
    label_density: 25
    legend_position: center
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    series_types:
      fact.total_clicks: area
    limit_displayed_rows: false
    hidden_series:
    - fact.average_click_rate
    - fact.total_clicks
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: LinkedIn - fact.total_impressions
        name: LinkedIn
        axisId: fact.total_impressions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1447
      - id: Google - fact.total_impressions
        name: Google
        axisId: fact.total_impressions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1450
      - id: Facebook - fact.total_impressions
        name: Facebook
        axisId: fact.total_impressions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1453
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1444
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
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
    show_dropoff: true
    focus_on_hover: false
    hidden_fields: []
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 8
    col: 0
    width: 6
    height: 3
  - title: Clicks
    name: Clicks Trend
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_line
    fields:
    - fact.date_period_dynamic_grain
    - fact.platform
    - fact.total_clicks
    pivots:
    - fact.platform
    sorts:
    - fact.date_period_dynamic_grain desc
    - fact.platform
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
    label_density: 25
    legend_position: center
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    series_types:
      fact.total_clicks: area
    limit_displayed_rows: false
    hidden_series:
    - fact.average_click_rate
    - fact.total_clicks
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: LinkedIn - fact.total_clicks
        name: LinkedIn
        axisId: fact.total_clicks
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1673
      - id: Google - fact.total_clicks
        name: Google
        axisId: fact.total_clicks
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1676
      - id: Facebook - fact.total_clicks
        name: Facebook
        axisId: fact.total_clicks
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1679
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1670
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
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
    show_dropoff: true
    focus_on_hover: false
    hidden_fields: []
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 8
    col: 12
    width: 6
    height: 3
  - title: Cost per Click
    name: Cost per Click Trend
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_line
    fields:
    - fact.date_period_dynamic_grain
    - fact.average_cost_per_click
    - fact.platform
    pivots:
    - fact.platform
    sorts:
    - fact.date_period_dynamic_grain desc
    - fact.platform
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
    label_density: 25
    legend_position: center
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    series_types:
      fact.total_clicks: area
    limit_displayed_rows: false
    hidden_series:
    - fact.average_click_rate
    - fact.total_clicks
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: LinkedIn - fact.average_cost_per_click
        name: LinkedIn
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1899
      - id: Google - fact.average_cost_per_click
        name: Google
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1902
      - id: Facebook - fact.average_cost_per_click
        name: Facebook
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1905
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1896
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
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
    show_dropoff: true
    focus_on_hover: false
    hidden_fields: []
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 8
    col: 18
    width: 6
    height: 3
  - title: Impressions
    name: Impressions
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: single_value
    fields:
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - fact.average_value_per_cost
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - last_fact.average_value_per_cost
    - fact.average_cost_per_impression
    - last_fact.average_cost_per_impression
    - fact.total_impressions
    - last_fact.total_impressions
    - last_fact.total_clicks
    - fact.total_clicks
    limit: 500
    dynamic_fields:
    - table_calculation: total_cost_change
      label: Total Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: roas_percent_change
      label: ROAS Percent Change
      expression: "(${fact.average_value_per_cost} - ${last_fact.average_value_per_cost})\
        \ / ${last_fact.average_value_per_cost}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cpm_percent_change
      label: CPM Percent Change
      expression: "(${fact.average_cost_per_impression} - ${last_fact.average_cost_per_impression})\
        \ / ${last_fact.average_cost_per_impression}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_impressions_change
      label: Total Impressions Change
      expression: "${fact.total_impressions} - ${last_fact.total_impressions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_clicks_change
      label: Total Clicks Change
      expression: "${fact.total_clicks} - ${last_fact.total_clicks}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    single_value_title: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
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
    show_x_axis_label: true
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
    - fact.total_conversions
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - conversion_rate_percent_change
    - cost_per_click_percent_change
    - cost_per_conversion_percent_change
    - total_conversion_change
    - total_cost_change
    - fact.average_click_rate
    - click_through_rate_percent_change
    - last_fact.average_value_per_cost
    - roas_percent_change
    - last_fact.average_cost_per_impression
    - fact.average_value_per_cost
    - fact.average_cost_per_impression
    - last_fact.total_clicks
    - last_fact.total_impressions
    - fact.total_clicks
    - cpm_percent_change
    - total_clicks_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 11
    col: 0
    width: 6
    height: 3
  - title: CPM
    name: CPM
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: single_value
    fields:
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - fact.average_value_per_cost
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - last_fact.average_value_per_cost
    - fact.average_cost_per_impression
    - last_fact.average_cost_per_impression
    limit: 500
    dynamic_fields:
    - table_calculation: total_cost_change
      label: Total Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: roas_percent_change
      label: ROAS Percent Change
      expression: "(${fact.average_value_per_cost} - ${last_fact.average_value_per_cost})\
        \ / ${last_fact.average_value_per_cost}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cpm_percent_change
      label: CPM Percent Change
      expression: "(${fact.average_cost_per_impression} - ${last_fact.average_cost_per_impression})\
        \ / ${last_fact.average_cost_per_impression}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    single_value_title: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
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
    show_x_axis_label: true
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
    - fact.total_conversions
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - conversion_rate_percent_change
    - cost_per_click_percent_change
    - cost_per_conversion_percent_change
    - total_conversion_change
    - total_cost_change
    - fact.average_click_rate
    - click_through_rate_percent_change
    - last_fact.average_value_per_cost
    - roas_percent_change
    - last_fact.average_cost_per_impression
    - fact.average_value_per_cost
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 11
    col: 6
    width: 6
    height: 3
  - title: Clicks
    name: Clicks
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: single_value
    fields:
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - fact.average_value_per_cost
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - last_fact.average_value_per_cost
    - fact.average_cost_per_impression
    - last_fact.average_cost_per_impression
    - fact.total_impressions
    - last_fact.total_impressions
    - fact.total_clicks
    - last_fact.total_clicks
    limit: 500
    dynamic_fields:
    - table_calculation: total_cost_change
      label: Total Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: roas_percent_change
      label: ROAS Percent Change
      expression: "(${fact.average_value_per_cost} - ${last_fact.average_value_per_cost})\
        \ / ${last_fact.average_value_per_cost}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cpm_percent_change
      label: CPM Percent Change
      expression: "(${fact.average_cost_per_impression} - ${last_fact.average_cost_per_impression})\
        \ / ${last_fact.average_cost_per_impression}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_impressions_change
      label: Total Impressions Change
      expression: "${fact.total_impressions} - ${last_fact.total_impressions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_clicks_change
      label: Total Clicks Change
      expression: "${fact.total_clicks} - ${last_fact.total_clicks}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    single_value_title: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
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
    show_x_axis_label: true
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
    - fact.total_conversions
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - conversion_rate_percent_change
    - cost_per_click_percent_change
    - cost_per_conversion_percent_change
    - total_conversion_change
    - total_cost_change
    - fact.average_click_rate
    - click_through_rate_percent_change
    - last_fact.average_value_per_cost
    - roas_percent_change
    - last_fact.average_cost_per_impression
    - fact.average_value_per_cost
    - fact.average_cost_per_impression
    - last_fact.total_impressions
    - cpm_percent_change
    - fact.total_impressions
    - last_fact.total_clicks
    - total_impressions_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 11
    col: 12
    width: 6
    height: 3
  - title: Per Click
    name: Per Click
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: single_value
    fields:
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    limit: 500
    dynamic_fields:
    - table_calculation: total_cost_change
      label: Total Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    single_value_title: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
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
    show_x_axis_label: true
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
    - fact.total_conversions
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - last_fact.average_cost_per_click
    - click_through_rate_percent_change
    - conversion_rate_percent_change
    - cost_per_conversion_percent_change
    - total_conversion_change
    - total_cost_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 11
    col: 18
    width: 6
    height: 3
  - title: Funnel
    name: Funnel
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_column
    fields:
    - fact.total_impressions
    - fact.total_clicks
    - fact.total_conversions
    - fact.platform
    sorts:
    - fact.platform
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#d06180"
    - "#a4a6a9"
    - "#7869df"
    - "#6e98f9"
    - "#dc9d4f"
    - "#4bb86a"
    - "#8ac8ca"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: log
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_impressions
        name: Impressions
        axisId: fact.total_impressions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 62
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 67
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 72
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 50
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
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    label: Conversion Rate QTD
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    single_value_title: Conversion Rate
    comparison_label: ''
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 14
    col: 0
    width: 12
    height: 6
  - title: Conversions
    name: Conversions Trend
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_line
    fields:
    - fact.date_period_dynamic_grain
    - fact.platform
    - fact.total_conversions
    pivots:
    - fact.platform
    sorts:
    - fact.date_period_dynamic_grain desc
    - fact.platform
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
    label_density: 25
    legend_position: center
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    series_types:
      fact.total_clicks: area
    limit_displayed_rows: false
    hidden_series:
    - fact.average_click_rate
    - fact.total_clicks
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: LinkedIn - fact.total_conversions
        name: LinkedIn
        axisId: fact.total_conversions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1334
      - id: Google - fact.total_conversions
        name: Google
        axisId: fact.total_conversions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1337
      - id: Facebook - fact.total_conversions
        name: Facebook
        axisId: fact.total_conversions
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1340
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1331
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
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
    show_dropoff: true
    focus_on_hover: false
    hidden_fields: []
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 14
    col: 12
    width: 6
    height: 3
  - title: Cost per Conversion
    name: Cost per Conversion Trend
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: looker_line
    fields:
    - fact.date_period_dynamic_grain
    - fact.platform
    - fact.average_cost_per_conversion
    pivots:
    - fact.platform
    sorts:
    - fact.date_period_dynamic_grain desc
    - fact.platform
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
    label_density: 25
    legend_position: center
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    series_types:
      fact.total_clicks: area
    limit_displayed_rows: false
    hidden_series:
    - fact.average_click_rate
    - fact.total_clicks
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: LinkedIn - fact.average_cost_per_conversion
        name: LinkedIn
        axisId: fact.average_cost_per_conversion
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1560
      - id: Google - fact.average_cost_per_conversion
        name: Google
        axisId: fact.average_cost_per_conversion
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1563
      - id: Facebook - fact.average_cost_per_conversion
        name: Facebook
        axisId: fact.average_cost_per_conversion
        __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
        __LINE_NUM: 1566
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-crosschannel/cross_channel_overview.dashboard.lookml
      __LINE_NUM: 1557
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
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
    show_dropoff: true
    focus_on_hover: false
    hidden_fields: []
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 14
    col: 18
    width: 6
    height: 3
  - title: Cost Per Conversion
    name: Cost Per Conversion
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: single_value
    fields:
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    limit: 500
    dynamic_fields:
    - table_calculation: total_cost_change
      label: Total Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    single_value_title: Per Conversion
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
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
    show_x_axis_label: true
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
    - fact.total_conversions
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - click_through_rate_percent_change
    - conversion_rate_percent_change
    - cost_per_click_percent_change
    - total_conversion_change
    - total_cost_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 17
    col: 18
    width: 6
    height: 3
  - title: Conversions
    name: Conversions
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: single_value
    fields:
    - fact.total_cost
    - fact.total_conversions
    - last_fact.total_cost
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    limit: 500
    dynamic_fields:
    - table_calculation: total_cost_change
      label: Total Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_conversion_change
      label: Total Conversion Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    single_value_title: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
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
    show_x_axis_label: true
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
    - last_fact.total_conversions
    - last_fact.average_cost_per_conversion
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    - fact.average_click_rate
    - last_fact.average_click_rate
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    - click_through_rate_percent_change
    - conversion_rate_percent_change
    - cost_per_click_percent_change
    - cost_per_conversion_percent_change
    - total_cost_change
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 17
    col: 12
    width: 6
    height: 3
  - title: Channels
    name: Channels
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    type: table
    fields:
    - fact.platform
    - fact.channel
    - fact.total_cost
    - fact.total_impressions
    - fact.average_cost_per_impression
    - fact.total_clicks
    - fact.average_cost_per_click
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_value_per_cost
    sorts:
    - fact.total_cost desc
    limit: 10
    column_limit: 50
    label: Campaign Details
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - fact.average_value_per_cost
    series_labels:
      fact.total_cost: Spend
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Platform: fact.platform
      Channel: fact.channel
      Account: fact.account_name
      Campaign: fact.campaign_name
      Ad Group: fact.ad_group_name
    row: 20
    col: 0
    width: 24
    height: 6
