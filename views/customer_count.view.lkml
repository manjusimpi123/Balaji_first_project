view: customer_count {
  sql_table_name: "ANALYTICS"."CUSTOMER_COUNT"
    ;;

  dimension: account_incremental_arr_c {
    type: number
    sql: ${TABLE}."ACCOUNT_INCREMENTAL_ARR_C" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_owner_segment_c {
    type: string
    sql: ${TABLE}."ACCOUNT_OWNER_SEGMENT_C" ;;
  }

  dimension: account_owner_sub_territory_c {
    type: string
    sql: ${TABLE}."ACCOUNT_OWNER_SUB_TERRITORY_C" ;;
  }

  dimension: account_owner_territory_c {
    type: string
    sql: ${TABLE}."ACCOUNT_OWNER_TERRITORY_C" ;;
  }

  dimension: account_sub_segment_c {
    type: string
    sql: ${TABLE}."ACCOUNT_SUB_SEGMENT_C" ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}."ACCOUNT_TYPE" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."BILLING_COUNTRY" ;;
  }

  dimension: case_safe_account_id_c {
    type: string
    sql: ${TABLE}."CASE_SAFE_ACCOUNT_ID_C" ;;
  }

  dimension: df_number_of_employee_c {
    type: number
    sql: ${TABLE}."DF_NUMBER_OF_EMPLOYEE_C" ;;
  }

  dimension: dfox_industry_c {
    type: string
    sql: ${TABLE}."DFOX_INDUSTRY_C" ;;
  }

  dimension: dfox_sub_industry_c {
    type: string
    sql: ${TABLE}."DFOX_SUB_INDUSTRY_C" ;;
  }

  dimension: dnb_industry_description_c {
    type: string
    sql: ${TABLE}."DNB_INDUSTRY_DESCRIPTION_C" ;;
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

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension_group: new_logo_booked_date_c {
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
    sql: ${TABLE}."NEW_LOGO_BOOKED_DATE_C" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."NUMBER_OF_EMPLOYEES" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."SHIPPING_COUNTRY" ;;
  }

  dimension: snapshot_quarter {
    type: string
    sql: ${TABLE}."SNAPSHOT_QUARTER" ;;
  }

  dimension: yearmonth {
    type: string
    sql: ${TABLE}."YEARMONTH" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
