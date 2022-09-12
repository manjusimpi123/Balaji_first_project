connection: "sum_snowflake"

include: "/views/**/*.view"



explore: arr_cohort_list {}

explore: arr_trends {}
explore: arr_type {
  access_filter: {
  field: arr_type.geo
  user_attribute : region_jpn
  }
#conditionally_filter: {
# filters: [arr_type.geo: "APAC,EMEA"]
 # unless: [arr_type.fiscal_month_start_date]
#}
}

explore : customer_count {}
