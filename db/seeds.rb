# Category.create!([
#   {name: "dog product"},
#   {name: "cat product"},
#   {name: "Halloween"},
#   {name: "Christmas"},
#   {name: "Clothes"},
#   {name: "Accessories"}
# ])
# CategoryProduct.create!([
#   {category_id: 1, product_id: 1},
#   {category_id: 1, product_id: 2},
#   {category_id: 2, product_id: 2},
#   {category_id: 2, product_id: 1}
# ])
# Image.create!([
#   {url: "/Duffie.JPG", product_id: nil},
#   {url: "file:///Users/joymccaffrey/Desktop/actualize_projects/mini-capstone-app/app/assets/images/Duffie.JPG", product_id: nil},
#   {url: "file:///Users/joymccaffrey/Desktop/actualize_projects/mini-capstone-app/app/assets/images/my_three_dogs.JPG", product_id: nil},
#   {url: "https://s-media-cache-ak0.pinimg.com/236x/44/0c/51/440c51fc56b38d9bea47cd62e38534d6.jpg", product_id: 4}
# ])
# Supplier.destroy_all
# Supplier.create!([
#   {name: "Petco", email: "dogs@petco.com", phone: "312-555-1212"},
#   {name: "Petsmart", email: "dogs@petsmart.com", phone: "312-555-1234"},
#   {name: "Petstuff", email: "dogs@petstuff.com", phone: "312-555-5678"},
#   {name: "Petsmore", email: "dogs@petsmore.com", phone: "312-555-0987"},
# ])
Product.destroy_all
Product.create!([
  {name: "Cubs Collar", price: "2", description: "Red, white, and blue Cubs collar, size small.", supplier_id: 14},
  {name: "Star Wars Chewbacca Costume", price: "20", description: "Fuzzy brown chewbacca costume, size large.", supplier_id: 14},
  {name: "Bug costume", price: "12", description: "Bug costume for dogs", supplier_id: 14},
  {name: "Christmas Elf Costume", price: "5", description: "cute elf costume.", supplier_id: 14}
])
Order.destroy_all
Order.create!([
  {user_id: 2, product_id: 1, quantity: 1, subtotal: "2.0", tax: "0.18", total: "2.18"},
  {user_id: 2, product_id: 4, quantity: 1, subtotal: "12.0", tax: "1.08", total: "13.08"},
  {user_id: 2, product_id: 4, quantity: 2, subtotal: "1212.0", tax: "109.08", total: "1321.08"},
  {user_id: 2, product_id: 4, quantity: 3, subtotal: "121212.0", tax: "10909.08", total: "132121.08"},
  {user_id: 2, product_id: 3, quantity: 1, subtotal: "5.0", tax: "0.45", total: "5.45"}
])
User.destroy_all
User.create!([
  {name: "Joy", email: "joy@gmail.com", password_digest: "$2a$10$PB9lH/fLnaAEUO/CAgOjT.eMyQcyYHWeRLDBEgYsMJzrCYjKb.zMS"},
  {name: "Joan", email: "joan@gmail.com", password_digest: "$2a$10$xwYYx7c5jgPJYSg69VjVyuvwQ6nGHxJ0YdXmbLqgKCnYINePxrDn."},
  {name: "joey", email: "joey@gmail.com", password_digest: "$2a$10$jeyaVdGSmksoHnp/OGuvX./jr5KscFppf39G/KVAI4t07wJnRABbW"},
  {name: "joe", email: "joe@email.com", password_digest: "$2a$10$Zr486CBD1opCTBU0Y3t78u6ktWaOQ0958HZZgyGv4z1t8cwng8WXe"}
])
