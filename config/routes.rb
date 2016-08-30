Rails.application.routes.draw do
  get '/all_products' => 'products#allproducts'
  get '/one_product' => 'products#oneproduct'
end
