view: dealer_request {
  sql_table_name: dealer_data.dealer_request ;;

  dimension: actiondate {
    type: string
    sql: ${TABLE}.actiondate ;;
  }

  dimension: actiondescr {
    type: string
    sql: ${TABLE}.actiondescr ;;
  }

  dimension: dealer_id {
    type: string
    sql: ${TABLE}.dealerId ;;
  }

  dimension: dealer_name {
    type: string
    sql: ${TABLE}.dealerName ;;
  }

  dimension: nextsteps {
    type: string
    sql: ${TABLE}.nextsteps ;;
  }

  dimension: request_type {
    type: string
    sql: ${TABLE}.requestType ;;
  }

  dimension: requestor_contact {
    type: string
    sql: ${TABLE}.requestorContact ;;
  }

  dimension: requestor_id {
    type: string
    sql: ${TABLE}.requestorId ;;
  }

  dimension: terminationdate {
    type: string
    sql: ${TABLE}.terminationdate ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [dealer_name]
  }
}
