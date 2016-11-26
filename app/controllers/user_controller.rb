class UserController < ApplicationController
	before_action :authenticate_user!, only: :profile

	def show
		@user = User.find(params[:id])
	end

	def list
		@users = User.all
	end

	def find_and_redirect
		user = User.find(params[:id])

		redirect_to "/users/#{user.id}/#{user.username}"
	end

	def profile
		render 'profile'
	end
end
