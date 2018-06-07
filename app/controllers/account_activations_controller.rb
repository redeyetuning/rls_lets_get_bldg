class AccountActivationsController < ApplicationController
	def edit
		user = User.find_by(email: params[:email])
		if user && !user.activated? && user.authenticated?(:activation, params[:id])
			user.activate
			log_in user
			flash[:success] = "Congratulations! You have succesfully activated your account."
			redirect_to user
		else
			flash[:danger] = "Error! Sorry that's an incorrect validation link."
			redirect_to root_url
		end
	end
end
