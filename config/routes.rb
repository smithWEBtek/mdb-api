Rails.application.routes.draw do

	root 'api/songs#index'

	namespace :api do
		resources :songs
		resources :lists
		resources :docs 
 	end
end
