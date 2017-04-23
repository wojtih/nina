class AddCatalogueNumberToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :catalogue_number, :string
  end
end
