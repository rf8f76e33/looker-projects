view: request_notes {
  sql_table_name: dealer_data.request_notes ;;

  dimension: corporate_comments {
    type: string
    sql: ${TABLE}.corporateComments ;;
  }

  dimension: dealer_comments {
    type: string
    sql: ${TABLE}.dealerComments ;;
  }

  dimension: regional_comments {
    type: string
    sql: ${TABLE}.regionalComments ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: workstep {
    type: string
    sql: ${TABLE}.workstep ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
