class UsersController < ApplicationController
  def index
  end

  def create
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def show
  	@user = User.find(params[:id])
  end

  def update
  end

  def delete
  end

def user_params
	params.require(:user).permit(:name, :email, :password, :password_confirmation)
end
  
end
