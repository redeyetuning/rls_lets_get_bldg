class UsersController < ApplicationController
  def index
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      log_in @user
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user
  	else
  		render :new
  		@user.errors.full_messages
  	end
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

private 

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
  
end
