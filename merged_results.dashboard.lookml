- dashboard: merged_results_lookml_dashboard
  title: Merged results LookML dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5sby1CX7jkZ9fsJyM2XnOE
  elements:
  - name: Merged results
    title: Merged results
    merged_queries:
    - model: a_ecommerce
      explore: order_items
      type: table
      fields: [products.category, products.count]
      sorts: [products.count desc 0]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
    - model: e_main_prod
      explore: order_items
      type: table
      fields: [products.category, inventory_items.count]
      sorts: [inventory_items.count desc 0]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: products.category
        source_field_name: products.category
    type: table
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Non-MR tile
    name: Non-MR tile
    model: a_ecommerce
    explore: orders
    type: looker_grid
    fields: [orders.user_id, orders.count, orders.created_year]
    pivots: [orders.created_year]
    fill_fields: [orders.created_year]
    sorts: [orders.created_year, orders.count desc 0]
    limit: 500
    column_limit: 50
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
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
