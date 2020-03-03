view: toyota_active_only {
  sql_table_name: dealer_data.toyota_active_only ;;

  dimension: address_line_1 {
    type: string
    sql: ${TABLE}.Address_Line_1 ;;
  }

  dimension: ao_full_name {
    type: string
    sql: ${TABLE}.AO_Full_Name ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.Class ;;
  }

  dimension: dealer_code {
    type: number
    sql: ${TABLE}.Dealer_Code ;;
  }

  dimension: dealer_group {
    type: string
    sql: ${TABLE}.Dealer_Group ;;
  }

  dimension: dealer_principal_re_dc {
    type: string
    sql: ${TABLE}.Dealer_Principal_RE_DC ;;
  }

  dimension: dealership_name_dba {
    type: string
    sql: ${TABLE}.Dealership_Name_DBA ;;
  }

  dimension: dealership_type {
    type: string
    sql: ${TABLE}.Dealership_Type ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.District ;;
  }

  dimension: dp_full_name {
    type: string
    sql: ${TABLE}.DP_Full_Name ;;
  }

  dimension: dual_entity {
    type: string
    sql: ${TABLE}.Dual_Entity ;;
  }

  dimension: dual_exclusive {
    type: string
    sql: ${TABLE}.Dual_Exclusive ;;
  }

  dimension: frst_nm_aao {
    type: string
    sql: ${TABLE}.Frst_Nm_AAO ;;
  }

  dimension: frst_nm_dp {
    type: string
    sql: ${TABLE}.Frst_Nm_DP ;;
  }

  dimension: frst_nm_gm {
    type: string
    sql: ${TABLE}.Frst_Nm_GM ;;
  }

  dimension: gm_full_name {
    type: string
    sql: ${TABLE}.GM_Full_Name ;;
  }

  dimension: last_nm_aao {
    type: string
    sql: ${TABLE}.Last_Nm_AAO ;;
  }

  dimension: last_nm_dp {
    type: string
    sql: ${TABLE}.Last_Nm_DP ;;
  }

  dimension: last_nm_gm {
    type: string
    sql: ${TABLE}.Last_Nm_GM ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: legal_entity_name {
    type: string
    sql: ${TABLE}.Legal_Entity_Name ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude ;;
  }

  dimension: market_type {
    type: string
    sql: ${TABLE}.Market_Type ;;
  }

  dimension: mid_nm_aao {
    type: string
    sql: ${TABLE}.Mid_Nm_AAO ;;
  }

  dimension: mid_nm_dp {
    type: string
    sql: ${TABLE}.Mid_Nm_DP ;;
  }

  dimension: mid_nm_gm {
    type: string
    sql: ${TABLE}.Mid_Nm_GM ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: pma_market_code {
    type: string
    sql: ${TABLE}.PMA_Market_Code ;;
  }

  dimension: pma_market_name {
    type: string
    sql: ${TABLE}.PMA_Market_Name ;;
  }

  dimension: po_box {
    type: string
    sql: ${TABLE}.PO_Box ;;
  }

  dimension: po_box_zip_code {
    type: string
    sql: ${TABLE}.PO_Box_Zip_Code ;;
  }

  dimension: previous_dealer {
    type: number
    sql: ${TABLE}.Previous_Dealer ;;
  }

  dimension: region_area {
    type: string
    sql: ${TABLE}.Region_Area ;;
  }

  dimension: region_code {
    type: number
    sql: ${TABLE}.Region_Code ;;
  }

  dimension: scion_dba_name {
    type: string
    sql: ${TABLE}.SCION_DBA_Name ;;
  }

  dimension: scion_url {
    type: string
    sql: ${TABLE}.Scion_URL ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.Start_Date ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: ten_district {
    type: string
    sql: ${TABLE}.Ten_District ;;
  }

  dimension: toyota_url {
    type: string
    sql: ${TABLE}.Toyota_URL ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      pma_market_name,
      scion_dba_name,
      gm_full_name,
      dp_full_name,
      ao_full_name,
      legal_entity_name
    ]
  }
}
