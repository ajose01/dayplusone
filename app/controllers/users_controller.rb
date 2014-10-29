class UsersController < ApplicationController
before_action :authenticate_user!

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
		@user.save
	end




end