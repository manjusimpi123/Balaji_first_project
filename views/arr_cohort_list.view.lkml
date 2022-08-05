view: arr_cohort_list {
  sql_table_name: "ANALYTICS"."ARR_COHORT_LIST"
    ;;

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}."FISCAL_QUARTER" ;;
  }

  dimension: nextval {
    type: number
    sql: ${TABLE}."NEXTVAL" ;;
  }

  dimension_group: quarter_end {
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
    sql: ${TABLE}."QUARTER_END_DATE" ;;
  }

  dimension_group: quarter_start {
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
    sql: ${TABLE}."QUARTER_START_DATE" ;;
  }

  dimension: snapshot_quarter {
    type: string
    sql: ${TABLE}."SNAPSHOT_QUARTER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
