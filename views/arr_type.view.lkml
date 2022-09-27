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
    description: "aaaaaaaaaaaaaaaaa"

    sql: ${TABLE}."GEO" ;;
    html: {% if value == 'Americas Total' %}
    <span style="color: black; background-color: lightblue; font-size:100%; text-align:center">{{ rendered_value }}</span>
    {% elsif value == 'APAC' %}
    <span style="color: black; background-color: lightgreen; font-size:100%; text-align:center">{{ rendered_value }}</span>
    {% else %}
    <span style="color: black; background-color: orange; font-size:100%; text-align:center">{{ rendered_value }}</span>
    {% endif %}


    ;;
    full_suggestions: yes
    link: {
      label: "filter geo"
      url: "https://infometrypartner.cloud.looker.com/looks/104?&f[arr_type.geo]={{_filters['arr_type.geo'] | url_encode}}"
    }

  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
    drill_fields: [quarter]
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."QUARTER" ;;
   # drill_fields: [industry]
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
    description: "aaaaaaaaaaaaaaaaa"
    html:
    <ul>
    <li> value: {{ value }} </li>
    <li> rendered_value: {% if value < 1000 %}
    <span style="color:darkgreen;">{{ rendered_value }}</span>
    {% elsif value < 5000 %}
    <span style="color:goldenrod;">{{ rendered_value }}</span>
    {% else %}
    <span style="color:darkred;">{{ rendered_value }}</span>
    {% endif %}  </li>
    <li> linked_value: {{ linked_value }} </li>
    <li> model: {{ _model._name }} </li>
    <li> view: {{ _view._name }} </li>
    <li> explore: {{ _explore._name }} </li>
    <li> field: {{ _field._name }} </li>
    <li> dialect: {{ _dialect._name }} </li>
    <li> year: {{ _filters['arr_type.fiscal_month_start_year'] }} </li>
    </ul>
    </body>;;

  }

  measure: count1 {
    type: count
    drill_fields: []
    description: "aaaaaaaaaaaaaaaaa"
    html:
     rendered_value: {% if value < 1000 %}
    <span style="color:darkgreen;">{{ value }}</span>
    {% elsif value < 5000 %}
    <span style="color:goldenrod;">{{ value }}</span>
    {% else %}
    <span style="color:darkred;">{{ value }}</span>
    {% endif %}
   ;;

    }
}
