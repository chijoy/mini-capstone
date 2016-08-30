class ProductsController < ApplicationController
  def allproducts
    @products = Product.all
  end
end
