view: dealer_contract_data {
  sql_table_name: dealer_data.dealer_contract_data ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: contract_id {
    type: number
    sql: ${TABLE}.Contract_ID ;;
  }

  dimension: dealer_name {
    type: string
    sql: ${TABLE}.Dealer_Name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  measure: count {
    type: count
    drill_fields: [dealer_name]
  }
}
