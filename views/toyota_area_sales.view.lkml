view: toyota_area_sales {
  derived_table: {
    sql: select area , sum(total_sales_in_pma) as  total_sales_in_pma  , sum(dealer_national_sales) as dealer_national_sales from `tmna-demos.dealer_data.toyota_dealer_cross_sell_r12` group by area
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: total_sales_in_pma {
    type: number
    sql: ${TABLE}.total_sales_in_pma ;;
  }

  dimension: dealer_national_sales {
    type: number
    sql: ${TABLE}.dealer_national_sales ;;
  }

  set: detail {
    fields: [area, total_sales_in_pma, dealer_national_sales]
  }
}
