class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images

  def discounted?
    price.to_f < 50
  end

  def tax
    price.to_f * 0.09
  end

  def total
    price.to_f + tax
  end

  def top_image
    first_image = images.first_image
    if first_image
      images.first.url
    else
      "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwif-bDXwY3PAhXM5yYKHfXoA5cQjRwIBw&url=http%3A%2F%2Fwww.acmmosresearch.com%2Fimage%2F&psig=AFQjCNHA-6u8XcKiLFiWTxqBM-oNK2xa6g&ust=1473896280769429"
    end
  end
end
