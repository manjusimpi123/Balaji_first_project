view: employee_salary {
  sql_table_name: "TEST_BALAJI"."EMPLOYEE_SALARY"
    ;;

  dimension: department_id {
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: employee_id {
    type: number
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: hire_date {
    type: string
    sql: ${TABLE}."HIRE_DATE" ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}."JOB_ID" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}."MODIFIED_DATE" ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}."SALARY" ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
