view: arr_trends {
  sql_table_name: "ANALYTICS"."ARR_TRENDS"
    ;;

  dimension: account_name_parent {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME_PARENT" ;;
  }

  dimension: adjustments {
    type: number
    sql: ${TABLE}."ADJUSTMENTS" ;;
  }

  dimension: churned {
    type: number
    sql: ${TABLE}."CHURNED" ;;
  }

  dimension: downgrade {
    type: number
    sql: ${TABLE}."DOWNGRADE" ;;
  }

  dimension_group: dw_insert_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DW_INSERT_DT" ;;
  }

  dimension_group: dw_update_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DW_UPDATE_DT" ;;
  }

  dimension_group: fiscal_month_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FISCAL_MONTH_START_DATE" ;;
  }

  dimension: new_logo {
    type: number
    sql: ${TABLE}."NEW_LOGO" ;;
  }

  dimension: prior_period_arr {
    type: number
    sql: ${TABLE}."PRIOR_PERIOD_ARR" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."QUARTER" ;;
  }

  dimension: totalincrease {
    type: number
    sql: ${TABLE}."TOTALINCREASE" ;;
  }

  dimension: upgrade {
    type: number
    sql: ${TABLE}."UPGRADE" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
