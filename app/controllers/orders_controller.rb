class OrdersController < ApplicationController
  def create
    
    product = Product.find(params[:product_id])

    @order = Order.new

    (current_user.carted_products.where("status = ?", "carted" )
      
    @order.calculate_subtotal
    @order.calculate_tax
    @order.calculate_total
    @order.save

    flash[:success] = "Order complete"
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    @product = @order.product
  end
end
