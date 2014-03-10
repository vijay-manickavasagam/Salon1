class UsersController < ApplicationController

  def new
    @user = Salon.new
  end

 def create
  @user = User.new(user_params)
  @user.save
  redirect_to @user
end

def show
  # @user=User.find(params[:id])
  @user = User.find_by(:id => params[:user_id])
end




end
