class CartedProductsController < ApplicationController

  def index
    @carted_products = current_user.carted_products.where("status = ?", "carted" )

    
  end

  def create

    @carted_products = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity].to_i,
      status: "carted"
    )

    flash[:success] = "Carted Product Created"
    redirect_to "/checkout"
  end
end
