class SnippetController < ApplicationController
	before_action :authenticate_user!, :only => :create

	def show
		@snippet = Snippet.find(params[:id])
	end

	def create
		render 'create'
	end

	def post_snippet
		current_user.snippets.create(title: params[:title], description: params[:description], language: params[:language], code: params[:code])
	end
end
