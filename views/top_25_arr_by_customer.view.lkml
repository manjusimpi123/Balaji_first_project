view: top_25_arr_by_customer {
  sql_table_name: "ANALYTICS"."TOP_25_ARR_BY_CUSTOMER"
    ;;

  dimension: finance_account_name {
    type: string
    sql: ${TABLE}."FINANCE_ACCOUNT_NAME" ;;
  }

  dimension: finance_account_no {
    type: string
    sql: ${TABLE}."FINANCE_ACCOUNT_NO" ;;
  }

  dimension: q118_reported_arr {
    type: number
    sql: ${TABLE}."Q118_REPORTED_ARR" ;;
  }

  dimension: q119_reported_arr {
    type: number
    sql: ${TABLE}."Q119_REPORTED_ARR" ;;
  }

  dimension: q120_reported_arr {
    type: number
    sql: ${TABLE}."Q120_REPORTED_ARR" ;;
  }

  dimension: q121_reported_arr {
    type: number
    sql: ${TABLE}."Q121_REPORTED_ARR" ;;
  }

  dimension: q218_reported_arr {
    type: number
    sql: ${TABLE}."Q218_REPORTED_ARR" ;;
  }

  dimension: q219_reported_arr {
    type: number
    sql: ${TABLE}."Q219_REPORTED_ARR" ;;
  }

  dimension: q220_reported_arr {
    type: number
    sql: ${TABLE}."Q220_REPORTED_ARR" ;;
  }

  dimension: q221_reported_arr {
    type: number
    sql: ${TABLE}."Q221_REPORTED_ARR" ;;
  }

  dimension: q318_reported_arr {
    type: number
    sql: ${TABLE}."Q318_REPORTED_ARR" ;;
  }

  dimension: q319_reported_arr {
    type: number
    sql: ${TABLE}."Q319_REPORTED_ARR" ;;
  }

  dimension: q320_reported_arr {
    type: number
    sql: ${TABLE}."Q320_REPORTED_ARR" ;;
  }

  dimension: q321_reported_arr {
    type: number
    sql: ${TABLE}."Q321_REPORTED_ARR" ;;
  }

  dimension: q418_reported_arr {
    type: number
    sql: ${TABLE}."Q418_REPORTED_ARR" ;;
  }

  dimension: q419_reported_arr {
    type: number
    sql: ${TABLE}."Q419_REPORTED_ARR" ;;
  }

  dimension: q420_reported_arr {
    type: number
    sql: ${TABLE}."Q420_REPORTED_ARR" ;;
  }

  dimension: q421_reported_arr {
    type: number
    sql: ${TABLE}."Q421_REPORTED_ARR" ;;
  }

  measure: count {
    type: count
    drill_fields: [finance_account_name]
  }
}
