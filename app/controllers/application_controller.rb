class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
  	@pageTitle = "Recent Snippets"
  	@snippets = Snippet.all
  	render 'index'
  end
end
