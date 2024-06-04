- dashboard: brand_overview
  title: Brand Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: |-
    Brand Inventory and Sales

     **bold**

    _italic_

    *asterisks?*

    [hyperlink](google.com)

    👍
  query_timezone: query_saved
  elements:
  - name: Total Orders (moved from Alissa ST)
    title: Total Orders (moved from Alissa ST)
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    sorts: [order_items.order_count desc]
    limit: 500
    font_size: medium
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    color_palette: Default
    text_color: "#49719a"
    hidden_fields: []
    y_axes: []
    listen:
      Sold Count: inventory_items.sold_count
    row: 0
    col: 0
    width: 6
    height: 4
  - name: Avg Order Sale Price (moved from Alissa ST)
    title: Avg Order Sale Price (moved from Alissa ST)
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.average_sale_price]
    sorts: [order_items.average_sale_price desc]
    limit: 500
    font_size: medium
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    color_palette: Default
    text_color: "#49719a"
    hidden_fields: []
    y_axes: []
    listen:
      Sold Count: inventory_items.sold_count
    row: 0
    col: 6
    width: 6
    height: 4
  - name: 30 Day Repeat Purchase Rate (moved from Alissa ST)
    title: 30 Day Repeat Purchase Rate (moved from Alissa ST)
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.30_day_repeat_purchase_rate]
    sorts: [order_items.30_day_repeat_purchase_rate desc]
    limit: 500
    font_size: medium
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    color_palette: Default
    text_color: "#49719a"
    hidden_fields: []
    y_axes: []
    listen:
      Sold Count: inventory_items.sold_count
    row: 0
    col: 12
    width: 6
    height: 4
  - name: Customers by Source and Gender (moved from Alissa ST)
    title: Customers by Source and Gender (moved from Alissa ST)
    model: thelook
    explore: order_items
    type: looker_donut_multiples
    fields: [users.gender, users.traffic_source, users.count]
    pivots: [users.traffic_source]
    filters:
      order_items.created_month: 3 months
    sorts: [users.gender, users.traffic_source 0]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 12
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    color_application:
      collection_id: ac820982-bcaa-490a-b401-ce97596c3fa6
      custom:
        id: 38fcc92a-bbab-2a0f-34d4-d76f91f8383d
        label: Custom
        type: discrete
        colors:
        - "#64518A"
        - "#8D7FB9"
        - "#EA8A2F"
        - "#F2B431"
        - "#20A5DE"
        - "#57BEBE"
        - "#7F7977"
        - "#B2A898"
        - "#494C52"
      options:
        steps: 5
        reverse: false
    show_view_names: true
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    listen:
      Sold Count: inventory_items.sold_count
    row: 4
    col: 0
    width: 12
    height: 8
  - name: Orders by Day and Category
    title: Orders by Day and Category
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [products.category, order_items.created_date, order_items.order_count]
    pivots: [products.category]
    filters:
      products.category: Blazers & Jackets,Sweaters,Pants,Shorts,Fashion Hoodies &
        Sweatshirts,Accessories
    sorts: [order_items.30_day_repeat_purchase_rate desc 0, products.category]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      order_items.order_count:
        is_active: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors:
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    hidden_fields: []
    y_axes: []
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    show_null_points: true
    defaults_version: 1
    series_types: {}
    listen:
      Sold Count: inventory_items.sold_count
    row: 12
    col: 0
    width: 24
    height: 10
  - name: Number of First Purchasers (moved from Alissa ST)
    title: Number of First Purchasers (moved from Alissa ST)
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.first_purchase_count]
    sorts: [order_items.first_purchase_count desc]
    limit: 500
    font_size: medium
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    color_palette: Default
    text_color: "#49719a"
    hidden_fields: []
    y_axes: []
    listen:
      Sold Count: inventory_items.sold_count
    row: 0
    col: 18
    width: 6
    height: 4
  - name: Customers by State (moved from Alissa ST)
    title: Customers by State (moved from Alissa ST)
    model: thelook
    explore: order_items
    type: looker_geo_choropleth
    fields: [users.state, users.count]
    sorts: [users.count desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    map: usa
    map_projection: ''
    show_view_names: true
    quantize_colors: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    colors: ["#64518A"]
    empty_color: ''
    outer_border_color: ''
    inner_border_color: ''
    loading: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Sold Count: inventory_items.sold_count
    row: 4
    col: 12
    width: 12
    height: 8
  filters:
  - name: Number Filter
    title: Number Filter
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: inventory_items.created_date
  - name: Was Shipped (Yes / No)
    title: Count
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: order_items.was_shipped
  - name: Sold Count
    title: Sold Count
    type: field_filter
    default_value: "[0,1]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options:
        min: 0
        max: 1000
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: inventory_items.sold_count
