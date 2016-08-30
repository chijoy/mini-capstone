
10.times do |product|
  Product.create( :name => Faker::Commerce.product_name, :price => Faker::Commerce.price, :image => Faker::Avatar.image, :description => Faker::Lorem.paragraph )
end
