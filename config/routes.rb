Rails.application.routes.draw do

  devise_for :users
  root to: "users#show"

  # HomeController
  get "home" => "home#index"

  #AlbumController
  get "album/new" => "album#new"
  get "album/search" => "album#search"

  #UsersController
  get "user" => "users#show"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
