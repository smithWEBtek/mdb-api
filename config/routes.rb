Rails.application.routes.draw do

	root 'api/songs#index'

	namespace :api do
		resources :list_songs
		resources :song_genres
		resources :song_artists
		resources :lists
		resources :docs
		resources :mp3s
		resources :genres
		resources :artists
		resources :songs
 	end
end
