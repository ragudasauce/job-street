JobStreet::Application.routes.draw do

	resources :users do
		resources :resumes
	end
	
	resources :jobs
	resources :companies do 
		resources :jobs
	end
	
	resources :login
	resources :locations

	get "home/index"
	root :to => 'home#index'

	# get "login/index"
	get "logout" => "login#destroy", :as => "logout"
	get "login" => "login#new", :as => "login"
 	get "sign_up" => "user#new", :as => "sign_up" 
 	root :to => "users#new"
 
end
