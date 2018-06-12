Rails.application.routes.draw do
  resources :list_songs
  resources :song_genres
  resources :song_artists
  resources :lists
  resources :docs
  resources :mp3s
  resources :genres
  resources :artists
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
