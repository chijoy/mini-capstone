class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])

    if user.save 
      session[:user_id] = :user_id
      flash[:success] = "User successfully added!"
      redirect_to '/'
    else
      flash[:warning] = "User name or password not recognized."
      redirect_to '/signup'
    end
  end
end
