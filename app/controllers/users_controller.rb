class UsersController < ApplicationController
  def index
  end

  def create
  end

  def new
  	
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


  
end
