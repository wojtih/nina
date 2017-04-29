class Product < ApplicationRecord
   validates :name, :price, :net_price, presence: true
   validates :new_product, inclusion: { in: [true, false] }, presence: true
   validates :catalogue_number, presence: true, uniqueness: true, on: :create and :update
   validates :name, length: { maximum: 50 }
   validates :description, length: { maximum: 1000 }
   validates :price, :net_price, numericality: { greater_than: 0 }
   validates :country_of_origin, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
