class RefactorController < ApplicationController
	before_action :authenticate_user!, :only => [:create, :upvote, :destroy, :confirm_destroy]

	def create
		current_user.refactors.create(snippet_id: params[:snippet], code: params[:code])
		redirect_to :back
	end

	def confirm_destroy
		@refactor = Refactor.find(params[:id])

		if @refactor.user_id == current_user.id
			render 'destroy'
		else
			redirect_to "/snippets/#{@refactor.snippet_id}"
		end
	end

	def destroy
		@refactor = Refactor.find(params[:id])

		@refactor.delete

		redirect_to "/snippets/#{@refactor.snippet_id}"
	end

	def upvote
		r = Refactor.find(params[:id])

		if r.liked_by.include? current_user.id
			r.liked_by.delete(current_user.id)
		else
			r.liked_by << current_user.id
		end

		r.save!

		redirect_to :back
	end
end
