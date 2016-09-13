class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end

  def new
    
  end

  def create
    @supplier = Supplier.create(name: params[:name],
                                email: params[:email],
                                phone: params[:phone])

    flash[:success] = "Supplier has been created."
    redirect_to "/supplier/#{@supplier.id}"
  end

  def show
    
      @supplier = Supplier.find_by(id: params[:id])
    
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    @supplier.update(name: params[:name],
                    email: params[:email],
                    phone: params[:phone])

    flash[:success] = "Supplier has been updated."
    redirect_to "/supplier/#{@supplier.id}"
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy

    flash[:warning] = "Supplier has been deleted."
    redirect_to '/suppliers'
  end

end
