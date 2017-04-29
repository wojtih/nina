class AddDbConstrainsToProducts < ActiveRecord::Migration[5.0]
  def change
    change_column_null :products, :name, false
    change_column_null :products, :price, false
    change_column_null :products, :new_product, false

    change_column_default :products, :new_product, true
  end
end
