class Order < ApplicationRecord
  belongs_to :user
  has_many :products


  def pretty_created_at
    created_at.strftime("%A, %b %d")
  end

  def calculate_subtotal
    self.subtotal = product.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end
end
