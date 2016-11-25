class SnippetController < ApplicationController
	before_action :authenticate_user!, :only => :create

	def show
		@snippet = Snippet.find(params[:id])
	end

	def create
		render 'create'
	end

	def post_snippet
		snippet = current_user.snippets.create(
			title: params[:title], 
			description: params[:description], 
			language: params[:language], 
			code: params[:code], 
			slug: params[:title].parameterize
		)

		redirect_to "/snippets/#{snippet.id}/#{snippet.slug}"
	end

	# Given, a url with the snippet ID, redirect to the correct slug
	def find_and_redirect
		snippet = Snippet.find(params[:id])

		redirect_to "/snippets/#{snippet.id}/#{snippet.slug}"
	end
end
