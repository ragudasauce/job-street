JobStreet::Application.routes.draw do

	resources :users
	resources :jobs
	resources :companies
	resources :login

	get "home/index"
	root :to => 'home#index'

	# get "login/index"
 	get "sign_up" => "user#new", :as => "sign_up" 
 	root :to => "users#new"
 
end
