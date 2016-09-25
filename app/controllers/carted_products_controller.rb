class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user && current_user.currently_carted.any?
      @carted_products = current_user.currently_carted
    else
      flash[:warning] = "Cart is empty. Please add items to your cart."
      redirect_to '/'
    end
  end

  def create
    CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )
    
    session[:cart_count] = nil
    flash[:success] = "Added to Cart"
    redirect_to '/carted_products'
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")

    session[:cart_count] = nil
    flash[:success] = "Product removed from cart."
    redirect_to "/carted_products"
  end
end
