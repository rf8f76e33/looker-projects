connection: "toyota_sales_data"

# include all the views
include: "/views/**/*.view"

datagroup: toyota_sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: toyota_sales_default_datagroup

explore: dealer_contract_data {}

explore: dealer_info {}

explore: dealer_obj_extract {}

explore: dealer_request {}

explore: dealer_user_data {}

explore: package_data {}

explore: request_notes {}

explore: toyota_active_only {}

explore: toyota_dealer_cross_sell_r12 {}

explore: toyota_dt_daily_sales_feed {}

explore: lexus_dt_daily_sales_feed {}

explore: toyota_regional_sales {}

explore: toyota_area_sales {}
