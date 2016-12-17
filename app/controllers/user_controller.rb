class UserController < ApplicationController
	before_action :authenticate_user!, only: [:profile, :edit_profile]

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
		@user = current_user
		render 'show'
	end

	def edit_profile
		render 'edit'
	end

	def post_edit_profile
		u = User.find(current_user.id)

		u.update(
			first_name: params[:first_name],
			last_name: params[:last_name],
			website: params[:website],
			profile_picture: params[:profile_picture],
			email: params[:email],
			bio: params[:bio]
		)

		redirect_to '/profile'
	end
end
