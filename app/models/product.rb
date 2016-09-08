class Product < ApplicationRecord
  def discounted?
    price.to_f < 50
  end

  def tax
    price.to_f * 0.09
  end

  def total
    price.to_f + tax
  end
end
