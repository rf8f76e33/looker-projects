view: dealer_user_data {
  sql_table_name: dealer_data.dealer_user_data ;;

  dimension: dealer_id {
    type: string
    sql: ${TABLE}.dealer_id ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: user_phone {
    type: string
    sql: ${TABLE}.user_phone ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
