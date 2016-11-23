class RefactorController < ApplicationController
	before_action :authenticate_user!, :only => :create

	def create
		current_user.refactors.create(snippet_id: params[:snippet], code: params[:code])
		redirect_to :back
	end
end
