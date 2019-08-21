- dashboard: cross_channel_base
  extension: required
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  filters:
  - name: Period
    title: Period
    type: field_filter
    default_value: 28 day
    allow_multiple_values: false
    required: true
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    listens_to_filters: []
    field: fact.period
  - name: Period Latest
    title: Period Latest
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: false
    required: true
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    listens_to_filters: []
    field: fact.date_period_latest
  - name: Platform
    title: Platform
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    listens_to_filters:
    - Period
    - Period Latest
    field: fact.platform
  - name: Channel
    title: Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    listens_to_filters:
    - Platform
    - Period
    - Period Latest
    field: fact.channel
  - name: Account
    title: Account
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    listens_to_filters:
    - Period
    - Period Latest
    - Platform
    - Channel
    field: fact.account_name
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    listens_to_filters:
    - Period
    - Period Latest
    - Platform
    - Channel
    - Account
    field: fact.campaign_name
  - name: Ad Group
    title: Ad Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: cross_channel_ad_impressions
    listens_to_filters:
    - Period
    - Period Latest
    - Platform
    - Channel
    - Account
    - Campaign
    field: fact.ad_group_name
