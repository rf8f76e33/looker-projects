view: toyota_dealer_cross_sell_r12 {
  sql_table_name: dealer_data.toyota_dealer_cross_sell_r12 ;;

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: dealer_code {
    type: number
    sql: ${TABLE}.dealer_code ;;
  }

  dimension: dealer_name {
    type: string
    sql: ${TABLE}.dealer_name ;;
  }

  dimension: dealer_national_sales {
    type: number
    sql: ${TABLE}.dealer_national_sales ;;
  }

  dimension: dealer_sales_in_other_market_pma {
    type: number
    sql: ${TABLE}.dealer_sales_in_other_market_pma ;;
  }

  dimension: dealer_sales_in_pma {
    type: number
    sql: ${TABLE}.dealer_sales_in_pma ;;
  }

  dimension: dealer_sales_outside_of_market {
    type: number
    sql: ${TABLE}.dealer_sales_outside_of_market ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  dimension: market_dealer_sales_in_pma {
    type: number
    sql: ${TABLE}.market_dealer_sales_in_pma ;;
  }

  dimension: market_name {
    type: string
    sql: ${TABLE}.market_name ;;
  }

  dimension: non_market_dealer_sales_in_pma {
    type: number
    sql: ${TABLE}.non_market_dealer_sales_in_pma ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }

  dimension: pma_name {
    type: string
    sql: ${TABLE}.pma_name ;;
  }

  dimension: total_sales_in_pma {
    type: number
    sql: ${TABLE}.total_sales_in_pma ;;
  }

  measure: count {
    type: count
    drill_fields: [market_name, dealer_name, pma_name]
  }
}
