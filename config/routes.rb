Rails.application.routes.draw do
  
	get '/' => 'application#index'

	get '/profile' => 'user#profile'

	get '/snippets' => 'application#index'
	get '/snippets/new' => 'snippet#create'
	get '/snippets/:id' => 'snippet#find_and_redirect'
	get '/snippets/:id/:slug' => 'snippet#show'

	get '/users' => 'user#list'
	get '/users/:id' => 'user#find_and_redirect'
	get '/users/:id/:slug' => 'user#show'

	post '/post_snippet' => 'snippet#post_snippet'

	post '/refactor/create' => 'refactor#create'
	post '/refactors/:id/upvote' => 'refactor#upvote'


  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { registrations: 'registrations' }
  
  devise_scope :user do
	  get "/login" => "devise/sessions#new"
	end
end
