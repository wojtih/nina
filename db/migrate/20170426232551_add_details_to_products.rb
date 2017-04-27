class AddDetailsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :new_product, :boolean
    add_column :products, :country_of_origin, :string
  end
end
