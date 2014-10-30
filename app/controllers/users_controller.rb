class UsersController < ApplicationController
before_action :authenticate_user!
before_action :verify_user

	def show
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		counter()
		redirect_to user_path
	end



private

	def counter
		@user.check_in = @user.check_in.to_i + 1
		@user.last_date = Date.current
		@user.save
	end

	def verify_user
		@user = User.find(params[:id])
		unless current_user == @user
			flash[:alert] = "You are not authorized to access this page"
			redirect_to user_path(current_user)
	end
end




end