view: toyota_dt_daily_sales_feed {
  sql_table_name: dealer_data.toyota_dt_daily_sales_feed ;;

  dimension: dealer_code {
    type: number
    sql: ${TABLE}.dealer_code ;;
  }

  dimension: mtd_converted_units {
    type: number
    sql: ${TABLE}.mtd_converted_units ;;
  }

  dimension: mtd_sales {
    type: number
    sql: ${TABLE}.mtd_sales ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: year_month {
    type: number
    sql: ${TABLE}.year_month ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
