Rails.application.routes.draw do
  
	get '/' => 'application#index'

	get '/profile' => 'user#show'

	get '/snippets/new' => 'snippet#create'
	get '/snippets/:id' => 'snippet#show'

	post '/post_snippet' => 'snippet#post_snippet'

	post '/refactor/create' => 'refactor#create'

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { registrations: 'registrations' }
  
  devise_scope :user do
	  get "/login" => "devise/sessions#new"
	end
end
