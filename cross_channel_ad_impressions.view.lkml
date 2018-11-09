view: cross_channel_ad_impressions_base {
  extends: [ad_metrics_base, date_base, period_base, date_primary_key_base, ad_metrics_period_comparison_base, ad_metrics_weighted_period_comparison_base]

  dimension: _date {
    hidden: yes
    type: date_raw
  }
  dimension: channel {}
  dimension: account_id {
    hidden: yes
  }
  dimension: sort_order {
    hidden: yes
    type: number
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
    sql:  {% if _dialect._name == 'redshift' or _dialect._name == 'snowflake' %}
          ${channel} || '-' || ${account_id} || '-' || ${campaign_id} || '-' || ${ad_group_id}
          {% else %}
          ARRAY_TO_STRING(${channel}, ${account_id}, ${campaign_id}, ${ad_group_id}, "-")
          {% endif %} ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${cross_channel_ad_group_key_base} ;;
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
  join: total {
    from: cross_channel_date_fact
    view_label: "Total This Period"
    sql_on: ${fact.date_period} = ${total.date_period} ;;
    relationship: many_to_one
  }
  join: last_total {
    from: cross_channel_date_fact
    view_label: "Total Last Period"
    sql_on: ${fact.date_last_period} = ${last_total.date_period} ;;
    relationship: many_to_one
  }
}

view: cross_channel_ad_impressions {
  extends: [cross_channel_ad_impressions_base, cross_channel_ad_impressions_dt]

  dimension: cross_channel_ad_group_key_base {
    hidden: yes
    sql:  {% if _dialect._name == 'redshift' or _dialect._name == 'snowflake'  %}
          ${platform} || '-' || ${channel} || '-' || ${account_id} || '-' || ${campaign_id} || '-' || ${ad_group_id}
          {% else %}
          ARRAY_TO_STRING([${platform}, ${channel}, ${account_id}, ${campaign_id}, ${ad_group_id}], "-")
          {% endif %} ;;
  }

  dimension: platform {
    order_by_field: sort_order
  }
}
