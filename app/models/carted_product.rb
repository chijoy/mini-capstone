class CartedProduct < ApplicationRecord
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }

  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :user

  def subtotal  
    quantity * product.price
  end
end
