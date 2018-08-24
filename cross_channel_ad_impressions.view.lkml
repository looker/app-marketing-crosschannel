view: cross_channel_ad_impressions_base {
  extends: [ad_metrics_base, date_base, period_base, date_primary_key_base]

  dimension: _date {
    hidden: yes
    type: date_raw
  }
  dimension: channel {}
  dimension: account_id {
    hidden: yes
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: ad_group_id {
    hidden: yes
  }
  dimension: account_name {}
  dimension: campaign_name {}
  dimension: ad_group_name {}
  dimension: cross_channel_ad_group_key_base {
    hidden: yes
    sql: concat(${channel}, ${account_id}, ${campaign_id}, ${ad_group_id}) ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${cross_channel_ad_group_key_base} ;;
  }
}

explore: google_ads_ad_impressions {
  persist_with: adwords_etl_datagroup
  hidden: yes
  from: google_ads_ad_impressions
  view_name: fact
}

view: google_ads_ad_impressions {
  extends: [cross_channel_ad_impressions_base]

  derived_table: {
    distribution: "_date"
    sortkeys: ["_date"]
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad_impressions_ad_group {
      column: _date { field: fact.date_date }
      column: channel { field: fact.ad_network_type }
      column: account_id { field: fact.external_customer_id_string }
      column: account_name { field: customer.account_descriptive_name }
      column: campaign_id { field: fact.campaign_id_string }
      column: campaign_name { field: campaign.name }
      column: ad_group_id { field: fact.ad_group_id_string }
      column: ad_group_name { field: ad_group.ad_group_name }
      column: cost { field: fact.total_cost }
      column: impressions { field: fact.total_impressions }
      column: clicks { field: fact.total_clicks }
      column: conversions { field: fact.total_conversions }
      column: conversionvalue { field: fact.total_conversionvalue }
    }
  }
}

explore: facebook_ads_ad_impressions {
  persist_with: facebook_ads_etl_datagroup
  hidden: yes
  from: facebook_ads_ad_impressions
  view_name: fact
}

view: facebook_ads_ad_impressions {
  extends: [cross_channel_ad_impressions_base]

  derived_table: {
    sortkeys: ["_date"]
    distribution: "_date"
    datagroup_trigger: facebook_ads_etl_datagroup
    explore_source: fb_ad_impressions_platform_and_device {
      column: _date { field: fact.date_date}
      column: channel { field: fact.publisher_platform }
      column: account_id { field: fact.account_id }
      column: account_name { field: fact.account_name }
      column: campaign_id { field: fact.campaign_id }
      column: campaign_name { field: fact.campaign_name }
      column: ad_group_id { field: fact.adset_id }
      column: ad_group_name { field: fact.adset_name }
      column: cost { field: fact.total_cost }
      column: impressions { field: fact.total_impressions }
      column: clicks { field: fact.total_clicks }
      column: conversions { field: fact.total_conversions }
      column: conversionvalue { field: fact.total_conversionvalue }
    }
  }
}

explore: cross_channel_ad_impressions {
  persist_with: ama_etl_datagroup
  hidden: yes
  from: cross_channel_ad_impressions
  view_name: fact
  label: "Cross Channel Ad Group Date Fact"
  view_label: "This Period"

  join: last_fact {
    from: cross_channel_ad_impressions
    view_label: "Prior Period"
    sql_on: ${fact.cross_channel_ad_group_key_base} = ${last_fact.cross_channel_ad_group_key_base} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
}

view: cross_channel_ad_impressions {
  extends: [cross_channel_ad_impressions_base, cross_channel_ad_impressions_dt]

  dimension: cross_channel_ad_group_key_base {
    hidden: yes
    sql: ${platform} || ${channel} || ${account_id} || ${campaign_id} || ${ad_group_id} ;;
  }
}
