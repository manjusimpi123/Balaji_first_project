connection: "sum_snowflake"

include: "/views/**/*.view"



explore: arr_cohort_list {}

explore: arr_trends {}
explore: arr_type {
  access_filter: {
    field: arr_type.geo
    user_attribute : region
  }
}

explore : customer_count {}
