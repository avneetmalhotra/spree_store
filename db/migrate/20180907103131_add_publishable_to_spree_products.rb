class AddPublishableToSpreeProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_products, :publishable, :boolean, default: true
  end
end
