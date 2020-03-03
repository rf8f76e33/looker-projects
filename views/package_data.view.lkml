view: package_data {
  sql_table_name: dealer_data.package_data ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
