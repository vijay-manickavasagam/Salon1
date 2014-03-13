class UsersController < ApplicationController

  def new
  @user = User.new
  end

 def create
  @user = User.new(user_params)
  # params[:users]
  @user.save
  redirect_to @user

end

  def show
      @user = User.find_by(:id => params[:user_id])
      # if @user.id != session[:user_id]
      #   redirect_to root_url, notice: "Nice try"
      # end
  end

  def index
  @user = User.all
end

def show
  @user=User.find(params[:id])
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  if @users.update(params[:user].permit(:login, :password, :profile))
    redirect_to @user
  else
    render 'edit'
    # Render edit action?
  end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to "/users"
  # where does it redirect to?
end

private
  def user_params
    params.require(:user).permit(:login, :password, :profile)
  end

end
