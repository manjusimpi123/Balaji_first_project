view: arr_type {
  sql_table_name: "ANALYTICS"."ARR_TYPE"
    ;;

  dimension: account_name_parent {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME_PARENT" ;;
  }

  dimension: band_size {
    type: string
    sql: ${TABLE}."BAND_SIZE" ;;
  }

  dimension_group: dw_insert {
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
    sql: ${TABLE}."DW_INSERT_DATE" ;;
  }

  dimension_group: dw_update {
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
    sql: ${TABLE}."DW_UPDATE_DATE" ;;
  }

  dimension: finance_id {
    type: string
    sql: ${TABLE}."FINANCE_ID" ;;
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

  dimension: fiscal_yearmonth {
    type: string
    sql: ${TABLE}."FISCAL_YEARMONTH" ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}."GEO" ;;
    full_suggestions: no

  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."QUARTER" ;;
  }

  dimension: reported_arr_adjusted {
    type: number
    sql: ${TABLE}."REPORTED_ARR_ADJUSTED" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."SEGMENT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
