view: dealer_obj_extract {
  sql_table_name: dealer_data.dealer_obj_extract ;;

  dimension: car {
    type: number
    sql: ${TABLE}.car ;;
  }

  dimension: dealer {
    type: number
    sql: ${TABLE}.dealer ;;
  }

  dimension: dist {
    type: number
    sql: ${TABLE}.dist ;;
  }

  dimension: mth {
    type: number
    sql: ${TABLE}.mth ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: truck {
    type: number
    sql: ${TABLE}.truck ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
