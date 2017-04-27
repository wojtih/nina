class Product < ApplicationRecord
   validates :name, :price, presence: true
   validates :boolean_new_product, inclusion: { in: [true, false] }
   validates :catalogue_number, uniqueness: true, on: :create
   validates :name, length: { maximum: 50 }
   validates :description, length: { maximum: 1000 }
   validates :price, :net_price, numericality: { greater_than: 0 }
   validates :country_of_origin, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
