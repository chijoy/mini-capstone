class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def message
    "Your order for #{name} with product id of #{product_id}, quantity #{quantity} has been created!"
  end
end
