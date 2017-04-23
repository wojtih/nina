class AddDetailsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :new_or_used, :string
    add_column :products, :origin, :string
  end
end
