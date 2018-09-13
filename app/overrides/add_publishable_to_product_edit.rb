Deface::Override.new(virtual_path: 'spree/admin/products/_form',
                     name: 'add_publishable_to_products_edit',
                     insert_before: "[data-hook='admin_product_form_promotionable']",
                     partial: 'spree/admin/products/publishable_field'
                    )
