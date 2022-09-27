- dashboard: 01__web_traffic
  title: 01 - Web Traffic
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: IqfmS9GFl2eUKkOqUtKKqk
  elements:
  - title: Unique Home Page Viewers
    name: Unique Home Page Viewers
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.page_visit_at_month, page_visits.unique_upid, page_visits.lead_flag]
    pivots: [page_visits.lead_flag]
    fill_fields: [page_visits.lead_flag]
    filters:
      page_visits.page_visit_at_month: 6 months
      page_visits.page_name_raw: '"home_page"'
    sorts: [page_visits.page_visit_at_month desc, page_visits.lead_flag]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false

    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      No - page_visits.unique_upid: Anonymous
      Yes - page_visits.unique_upid: Lead
    x_axis_datetime_label: "%b-%y"
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", page_visits.page_name_raw, page_visits.landing_page_flow,
      page_visits.unique_upid, lead_funnel.marketing_lead_count, lead_funnel.first_pitch_scheduled_count,
      lead_funnel.first_pitch_held_count, lead_funnel.first_order_signed_count, page_view_to_ml_conversion,
      page_view_to_contract_signed_conversion, ml_to_contract_signed_conversion, lead_funnel.pitch_scheduled_to_pitch_held_conversion]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      page_visits.page_name_raw: 165
    series_cell_visualizations:
      page_visits.unique_upid:
        is_active: false
      page_view_to_contract_signed_conversion:
        is_active: true
    defaults_version: 1
    hidden_fields: [ml_to_contract_signed_conversion, page_view_to_ml_conversion,
      page_view_to_contract_signed_conversion]
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 8
    col: 0
    width: 12
    height: 8
  - title: Web Traffic
    name: Web Traffic
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.unique_upid, count_of_uvid, page_visits.page_visit_at_month]
    fill_fields: [page_visits.page_visit_at_month]
    filters:
      page_visits.page_view_pre_pitch_scheduled: ''
      page_visits.page_visit_at_month: 13 months
    sorts: [page_visits.page_visit_at_month]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: count_of_uvid, based_on: dim_uuid_page_visits.uvid,
        expression: '', label: Count of Uvid, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Page Visit Month
    series_types: {}
    series_labels:
      page_visits.unique_upid: Unique Users
      count_of_uvid: Unique Sessions
    x_axis_datetime_label: "%b-%y"
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", page_visits.page_name_raw, page_visits.landing_page_flow,
      page_visits.unique_upid, lead_funnel.marketing_lead_count, lead_funnel.first_pitch_scheduled_count,
      lead_funnel.first_pitch_held_count, lead_funnel.first_order_signed_count, page_view_to_ml_conversion,
      page_view_to_contract_signed_conversion, ml_to_contract_signed_conversion, lead_funnel.pitch_scheduled_to_pitch_held_conversion]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      page_visits.page_name_raw: 165
    series_cell_visualizations:
      page_visits.unique_upid:
        is_active: false
      page_view_to_contract_signed_conversion:
        is_active: true
    defaults_version: 1
    hidden_fields: [ml_to_contract_signed_conversion, page_view_to_ml_conversion,
      page_view_to_contract_signed_conversion]
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 0
    col: 0
    width: 24
    height: 8
  - title: Unique Views by Anonymous/Lead
    name: Unique Views by Anonymous/Lead
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.page_visit_at_month, page_visits.unique_upid, page_visits.lead_flag]
    pivots: [page_visits.lead_flag]
    fill_fields: [page_visits.page_visit_at_month, page_visits.lead_flag]
    filters:
      page_visits.page_visit_at_month: 6 months
    sorts: [page_visits.page_visit_at_month, page_visits.lead_flag]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: page_view_to_ml_conversion,
        _type_hint: number, category: table_calculation, expression: "${lead_funnel.marketing_lead_count}/${page_visits.unique_upid}",
        label: Page View to ML conversion, value_format: !!null '', value_format_name: percent_1,
        is_disabled: true}, {measure: count_of_uvid, based_on: dim_uuid_page_visits.uvid,
        expression: '', label: Count of Uvid, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {args: [page_visits.unique_upid], calculation_type: percent_of_row,
        category: table_calculation, based_on: page_visits.unique_upid, label: Percent
          of row, source_field: page_visits.unique_upid, table_calculation: percent_of_row,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Page Visit Month
    series_types: {}
    series_labels:
      page_visits.unique_upid: Unique Users
      count_of_uvid: Unique Sessions
      Yes - page_visits.unique_upid: Lead
      No - page_visits.unique_upid: Anonymous
    x_axis_datetime_label: "%b-%y"
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", page_visits.page_name_raw, page_visits.landing_page_flow,
      page_visits.unique_upid, lead_funnel.marketing_lead_count, lead_funnel.first_pitch_scheduled_count,
      lead_funnel.first_pitch_held_count, lead_funnel.first_order_signed_count, page_view_to_ml_conversion,
      page_view_to_contract_signed_conversion, ml_to_contract_signed_conversion, lead_funnel.pitch_scheduled_to_pitch_held_conversion]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      page_visits.page_name_raw: 165
    series_cell_visualizations:
      page_visits.unique_upid:
        is_active: false
      page_view_to_contract_signed_conversion:
        is_active: true
    defaults_version: 1
    hidden_fields: [ml_to_contract_signed_conversion, page_view_to_contract_signed_conversion]
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 16
    col: 0
    width: 12
    height: 8
  - title: First Click by Platform
    name: First Click by Platform
    model: bpf-prod-datamart
    explore: dim_uuid_page_visits_summary
    type: looker_line
    fields: [dim_uuid_page_visits_summary.first_click_month, dim_uuid_page_visits_summary.viewer_count,
      dim_uuid_page_visits_summary.first_platform]
    pivots: [dim_uuid_page_visits_summary.first_platform]
    fill_fields: [dim_uuid_page_visits_summary.first_click_month]
    filters:
      dim_uuid_page_visits_summary.first_click_month: 6 months
    sorts: [dim_uuid_page_visits_summary.first_click_month desc, dim_uuid_page_visits_summary.first_platform]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_series: []
    x_axis_datetime_label: "%b-%y"
    defaults_version: 1
    listen:
      Email: salesforce_id_mapping.email
    row: 39
    col: 0
    width: 24
    height: 8
  - title: Unique First Visitors
    name: Unique First Visitors
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.page_visit_at_month, page_visits.unique_upid]
    fill_fields: [page_visits.page_visit_at_month]
    filters:
      page_visits.page_visit_at_month: 6 months
      page_visit_days.page_visit_day_number: '1'
    sorts: [page_visits.page_visit_at_month]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: page_view_to_ml_conversion,
        _type_hint: number, category: table_calculation, expression: "${lead_funnel.marketing_lead_count}/${page_visits.unique_upid}",
        label: Page View to ML conversion, value_format: !!null '', value_format_name: percent_1,
        is_disabled: true}, {measure: count_of_uvid, based_on: dim_uuid_page_visits.uvid,
        expression: '', label: Count of Uvid, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {args: [page_visits.unique_upid], calculation_type: percent_of_row,
        category: table_calculation, based_on: page_visits.unique_upid, label: Percent
          of row, source_field: page_visits.unique_upid, table_calculation: percent_of_row,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Page Visit Month
    series_types: {}
    series_labels:
      page_visits.unique_upid: Unique Users
      count_of_uvid: Unique Sessions
      Yes - page_visits.unique_upid: Lead
      No - page_visits.unique_upid: Anonymous
    x_axis_datetime_label: "%b-%y"
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", page_visits.page_name_raw, page_visits.landing_page_flow,
      page_visits.unique_upid, lead_funnel.marketing_lead_count, lead_funnel.first_pitch_scheduled_count,
      lead_funnel.first_pitch_held_count, lead_funnel.first_order_signed_count, page_view_to_ml_conversion,
      page_view_to_contract_signed_conversion, ml_to_contract_signed_conversion, lead_funnel.pitch_scheduled_to_pitch_held_conversion]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      page_visits.page_name_raw: 165
    series_cell_visualizations:
      page_visits.unique_upid:
        is_active: false
      page_view_to_contract_signed_conversion:
        is_active: true
    defaults_version: 1
    hidden_fields: [ml_to_contract_signed_conversion, page_view_to_contract_signed_conversion]
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 8
    col: 12
    width: 12
    height: 8
  - name: Cost per Lead by Subplatform
    title: Cost per Lead by Subplatform
    merged_queries:
    - model: bpf-prod-datamart
      explore: page_visits
      type: table
      fields: [dim_uuid_page_visits.created_month, page_visits.total_cost, page_visits.subplatform]
      filters:
        lead_funnel.preferred_forest: ''
        dim_uuid_page_visits.created_month: 3 months
        page_visits.total_cost: ">0"
      sorts: [dim_uuid_page_visits.created_month]
      limit: 500
    - model: bpf-prod-datamart
      explore: dim_uuid_page_visits_summary
      type: table
      fields: [dim_uuid_page_visits_summary.first_click_month, dim_uuid_page_visits_summary.lead_count,
        dim_uuid_page_visits_summary.viewer_count, dim_uuid_page_visits_summary.total_first_click_spend,
        dim_uuid_page_visits_summary.first_subplatform]
      filters:
        dim_uuid_page_visits_summary.first_click_month: 3 months
      sorts: [dim_uuid_page_visits_summary.first_click_month desc]
      limit: 500
      join_fields:
      - field_name: dim_uuid_page_visits_summary.first_click_month
        source_field_name: dim_uuid_page_visits.created_month
      - field_name: dim_uuid_page_visits_summary.first_subplatform
        source_field_name: page_visits.subplatform
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [page_visits.total_cost, dim_uuid_page_visits_summary.lead_count,
      dim_uuid_page_visits_summary.viewer_count, dim_uuid_page_visits_summary.total_first_click_spend,
      first_click_cost_per_lead, cost_per_click]
    pivots: [page_visits.subplatform]
    sorts: [dim_uuid_page_visits.created_month desc]
    dynamic_fields: [{category: table_calculation, expression: "${page_visits.total_cost}/${dim_uuid_page_visits_summary.viewer_count}",
        label: Cost per Click, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: cost_per_click, _type_hint: number},
      {category: table_calculation, expression: "${page_visits.total_cost}/${dim_uuid_page_visits_summary.lead_count}",
        label: Cost per Lead, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: cost_per_lead, _type_hint: number}, {category: table_calculation,
        expression: "${dim_uuid_page_visits_summary.total_first_click_spend}/${dim_uuid_page_visits_summary.lead_count}",
        label: First click cost per lead, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: first_click_cost_per_lead, _type_hint: number}]
    listen:
    - Email: salesforce_id_mapping.email
    - Email: salesforce_id_mapping.email
    row: 62
    col: 0
    width: 24
    height: 6
  - name: Cost per Acquisition/Retargeting User
    title: Cost per Acquisition/Retargeting User
    note_state: collapsed
    note_display: above
    note_text: 'A unique person will appear maximum once in each category count per
      month. '
    merged_queries:
    - model: bpf-prod-datamart
      explore: page_visits
      type: table
      fields: [dim_uuid_page_visits.created_month, page_visits.total_cost, page_visits.subchannel]
      filters:
        lead_funnel.preferred_forest: ''
        dim_uuid_page_visits.created_month: 3 months
        page_visits.total_cost: ">0"
      sorts: [dim_uuid_page_visits.created_month]
      limit: 500
    - model: bpf-prod-datamart
      explore: page_visits
      type: table
      fields: [dim_uuid_page_visits.created_month, page_visits.subchannel, page_visits.unique_upid]
      filters:
        lead_funnel.preferred_forest: ''
        dim_uuid_page_visits.created_month: 3 months
        page_visits.subchannel: Acquisition,Retargeting
      sorts: [dim_uuid_page_visits.created_month desc]
      limit: 500
      join_fields:
      - field_name: dim_uuid_page_visits.created_month
        source_field_name: dim_uuid_page_visits.created_month
      - field_name: page_visits.subchannel
        source_field_name: page_visits.subchannel
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [page_visits.total_cost, dim_uuid_page_visits_summary.lead_count,
      dim_uuid_page_visits_summary.viewer_count, dim_uuid_page_visits_summary.total_first_click_spend,
      page_visits.unique_upid]
    pivots: [page_visits.subchannel]
    sorts: [dim_uuid_page_visits.created_month desc]
    dynamic_fields: [{category: table_calculation, expression: "${page_visits.total_cost}/${page_visits.unique_upid}",
        label: Cost per Click, value_format: !!null '', value_format_name: usd, _kind_hint: measure,
        table_calculation: cost_per_click, _type_hint: number}]
    listen:
    - Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    - Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 68
    col: 0
    width: 24
    height: 7
  - title: Spend by Acquisition/Retargeting
    name: Spend by Acquisition/Retargeting
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.subchannel, page_visits.total_cost, page_visits.page_visit_at_month]
    pivots: [page_visits.subchannel]
    fill_fields: [page_visits.page_visit_at_month]
    filters:
      page_visits.subchannel: Acquisition,Retargeting
      page_visits.page_visit_at_month: 6 months
    sorts: [page_visits.subchannel, page_visits.page_visit_at_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: []
    series_types: {}
    x_axis_datetime_label: "%b-%y"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 24
    col: 12
    width: 12
    height: 8
  - title: Spend on Anonymous/Lead Traffic
    name: Spend on Anonymous/Lead Traffic
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.page_visit_at_month, page_visits.lead_flag, page_visits.total_cost]
    pivots: [page_visits.lead_flag]
    fill_fields: [page_visits.page_visit_at_month, page_visits.lead_flag]
    filters:
      page_visits.page_visit_at_month: 6 months
    sorts: [page_visits.page_visit_at_month, page_visits.lead_flag]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: page_view_to_ml_conversion,
        _type_hint: number, category: table_calculation, expression: "${lead_funnel.marketing_lead_count}/${page_visits.unique_upid}",
        label: Page View to ML conversion, value_format: !!null '', value_format_name: percent_1,
        is_disabled: true}, {measure: count_of_uvid, based_on: dim_uuid_page_visits.uvid,
        expression: '', label: Count of Uvid, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {args: [page_visits.unique_upid], calculation_type: percent_of_row,
        category: table_calculation, based_on: page_visits.unique_upid, label: Percent
          of row, source_field: page_visits.unique_upid, table_calculation: percent_of_row,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Page Visit Month
    series_types: {}
    series_labels:
      page_visits.unique_upid: Unique Users
      count_of_uvid: Unique Sessions
      Yes - page_visits.unique_upid: Lead
      No - page_visits.unique_upid: Anonymous
      No - page_visits.total_cost: Anonymous
      Yes - page_visits.total_cost: Lead
    x_axis_datetime_label: "%b-%y"
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", page_visits.page_name_raw, page_visits.landing_page_flow,
      page_visits.unique_upid, lead_funnel.marketing_lead_count, lead_funnel.first_pitch_scheduled_count,
      lead_funnel.first_pitch_held_count, lead_funnel.first_order_signed_count, page_view_to_ml_conversion,
      page_view_to_contract_signed_conversion, ml_to_contract_signed_conversion, lead_funnel.pitch_scheduled_to_pitch_held_conversion]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      page_visits.page_name_raw: 165
    series_cell_visualizations:
      page_visits.unique_upid:
        is_active: false
      page_view_to_contract_signed_conversion:
        is_active: true
    defaults_version: 1
    hidden_fields: [ml_to_contract_signed_conversion, page_view_to_contract_signed_conversion]
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 16
    col: 12
    width: 12
    height: 8
  - title: Unique Views by Acquisition/Retargeting
    name: Unique Views by Acquisition/Retargeting
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.unique_upid, page_visits.subchannel, page_visits.page_visit_at_month]
    pivots: [page_visits.subchannel]
    fill_fields: [page_visits.page_visit_at_month]
    filters:
      page_visits.subchannel: Acquisition,Retargeting
      page_visits.page_visit_at_month: 6 months
    sorts: [page_visits.subchannel, page_visits.page_visit_at_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_datetime_label: "%b-%y"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Viewers can be counted in both acquisition and retargeting once per
      month.
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 24
    col: 0
    width: 12
    height: 8
  - title: Spend by Channel
    name: Spend by Channel
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.total_cost, page_visits.page_visit_at_month, page_visits.channel]
    pivots: [page_visits.channel]
    fill_fields: [page_visits.page_visit_at_month]
    filters:
      page_visits.page_visit_at_month: 6 months
    sorts: [page_visits.page_visit_at_month desc, page_visits.channel]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: []
    series_types: {}
    x_axis_datetime_label: "%b-%y"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 32
    col: 12
    width: 12
    height: 7
  - title: Unique Views by Channel
    name: Unique Views by Channel
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.page_visit_at_month, page_visits.unique_upid, page_visits.channel]
    pivots: [page_visits.channel]
    fill_fields: [page_visits.page_visit_at_month]
    filters:
      page_visits.page_visit_at_month: 6 months
    sorts: [page_visits.page_visit_at_month, page_visits.channel]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: page_view_to_ml_conversion,
        _type_hint: number, category: table_calculation, expression: "${lead_funnel.marketing_lead_count}/${page_visits.unique_upid}",
        label: Page View to ML conversion, value_format: !!null '', value_format_name: percent_1,
        is_disabled: true}, {measure: count_of_uvid, based_on: dim_uuid_page_visits.uvid,
        expression: '', label: Count of Uvid, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {args: [page_visits.unique_upid], calculation_type: percent_of_row,
        category: table_calculation, based_on: page_visits.unique_upid, label: Percent
          of row, source_field: page_visits.unique_upid, table_calculation: percent_of_row,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Page Visit Month
    series_types: {}
    series_labels:
      page_visits.unique_upid: Unique Users
      count_of_uvid: Unique Sessions
      Yes - page_visits.unique_upid: Lead
      No - page_visits.unique_upid: Anonymous
    x_axis_datetime_label: "%b-%y"
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", page_visits.page_name_raw, page_visits.landing_page_flow,
      page_visits.unique_upid, lead_funnel.marketing_lead_count, lead_funnel.first_pitch_scheduled_count,
      lead_funnel.first_pitch_held_count, lead_funnel.first_order_signed_count, page_view_to_ml_conversion,
      page_view_to_contract_signed_conversion, ml_to_contract_signed_conversion, lead_funnel.pitch_scheduled_to_pitch_held_conversion]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      page_visits.page_name_raw: 165
    series_cell_visualizations:
      page_visits.unique_upid:
        is_active: false
      page_view_to_contract_signed_conversion:
        is_active: true
    defaults_version: 1
    hidden_fields: [ml_to_contract_signed_conversion, page_view_to_contract_signed_conversion]
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 32
    col: 0
    width: 12
    height: 7
  - title: Clicks by Sub-Platform
    name: Clicks by Sub-Platform
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_grid
    fields: [page_visits.page_visit_at_month, page_visits.count, page_visits.subplatform]
    pivots: [page_visits.page_visit_at_month]
    fill_fields: [page_visits.page_visit_at_month]
    filters:
      page_visits.page_visit_at_month: 6 months
    sorts: [page_visits.page_visit_at_month, page_visits.count desc 4]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Email: salesforce_id_mapping.email
      Preferred Forest: lead_funnel.preferred_forest
    row: 47
    col: 0
    width: 24
    height: 8
  - title: Cost per Click by Sub-platform
    name: Cost per Click by Sub-platform
    model: bpf-prod-datamart
    explore: page_visits
    type: looker_column
    fields: [page_visits.page_visit_at_month, page_visits.count, page_visits.total_cost,
      page_visits.subplatform]
    pivots: [page_visits.subplatform]
    filters:
      page_visits.page_visit_at_month: 3 months
      page_visits.total_cost: ">0"
    sorts: [page_visits.page_visit_at_month desc, page_visits.subplatform]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${page_visits.total_cost}/${page_visits.count}",
        label: Cost per Click, value_format: !!null '', value_format_name: usd, _kind_hint: measure,
        table_calculation: cost_per_click, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: [Directmail - cost_per_click]
    series_types: {}
    hidden_fields: [page_visits.count, page_visits.total_cost]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Preferred Forest: lead_funnel.preferred_forest
    row: 55
    col: 0
    width: 24
    height: 7
  filters:
  - name: Email
    title: Email
    type: field_filter
    default_value: "-%betterplaceforests.com%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bpf-prod-datamart
    explore: dim_uuid_page_visits_summary
    listens_to_filters: []
    field: salesforce_id_mapping.email
  - name: Preferred Forest
    title: Preferred Forest
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: bpf-prod-datamart
    explore: page_visits
    listens_to_filters: []
    field: lead_funnel.preferred_forest
