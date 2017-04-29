class AddNetPriceToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :net_price, :decimal
  end
end
