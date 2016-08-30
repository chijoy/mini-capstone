class ProductsController < ApplicationController
  def allproducts
    @products = Product.all
  end

  def oneproduct
    @products = Product.last
  end
end
