view: dealer_info {
  sql_table_name: dealer_data.dealer_info ;;

  dimension: dealer_account_id {
    type: string
    sql: ${TABLE}.dealer_account_id ;;
  }

  dimension: dealer_address {
    type: string
    sql: ${TABLE}.dealer_address ;;
  }

  dimension: dealer_authority {
    type: string
    sql: ${TABLE}.dealer_authority ;;
  }

  dimension: dealer_city {
    type: string
    sql: ${TABLE}.dealer_city ;;
  }

  dimension: dealer_contract_id {
    type: number
    sql: ${TABLE}.dealer_contract_id ;;
  }

  dimension: dealer_id {
    type: string
    sql: ${TABLE}.dealer_id ;;
  }

  dimension_group: dealer_init {
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
    sql: ${TABLE}.dealer_init_date ;;
  }

  dimension: dealer_name {
    type: string
    sql: ${TABLE}.dealer_name ;;
  }

  dimension: dealer_ownership {
    type: string
    sql: ${TABLE}.dealer_ownership ;;
  }

  dimension: dealer_state {
    type: string
    sql: ${TABLE}.dealer_state ;;
  }

  dimension: dealer_status {
    type: string
    sql: ${TABLE}.dealer_status ;;
  }

  dimension: dealer_zip {
    type: number
    sql: ${TABLE}.dealer_zip ;;
  }

  measure: count {
    type: count
    drill_fields: [dealer_name]
  }
}
