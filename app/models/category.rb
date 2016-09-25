class Category < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :category_products
  has_many :products, through: :category_products
end
