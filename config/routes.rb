Rails.application.routes.draw do
  
	get '/' => 'application#index'

	get '/profile' => 'user#profile'
	get '/profile/edit' => 'user#edit_profile'
	post '/profile/edit' => 'user#post_edit_profile'

	get '/snippets' => 'application#index'
	get '/snippets/new' => 'snippet#create'
	get '/snippets/:id' => 'snippet#find_and_redirect'
	get '/snippets/:id/delete' => 'snippet#confirm_destroy'
	get '/snippets/:id/:slug' => 'snippet#show'

	post '/post_snippet' => 'snippet#post_snippet'
	post '/snippets/:id/delete' => 'snippet#destroy'

	get '/users' => 'user#list'
	get '/users/:id' => 'user#find_and_redirect'
	get '/users/:id/:slug' => 'user#show'

	get '/refactors/:id/delete' => 'refactor#confirm_destroy'

	post '/refactor/create' => 'refactor#create'
	post '/refactors/:id/upvote' => 'refactor#upvote'
	post '/refactors/:id/delete' => 'refactor#destroy'


  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { registrations: 'registrations' }
  
  devise_scope :user do
	  get "/login" => "devise/sessions#new"
	end
end
