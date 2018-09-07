Deface::Override.new(virtual_path: 'spree/admin/products/index',
                     name: 'add_publishable_table_heading_to_product_index',
                     insert_after: "[data-hook='admin_products_index_headers'] th:nth-child(3)",
                     text: "<th class='text-center'>
                              <%= sort_link @search, :publishable, Spree.t(:publishable) %>
                            </th>"
                    )

Deface::Override.new(virtual_path: 'spree/admin/products/index',
                     name: 'add_publishable_table_column_to_product_index',
                     insert_after: "[data-hook='admin_products_index_rows'] td:nth-child(4)",
                     text: "<td class='text-center'><%= product.publishing_status %></td>"
                    )
