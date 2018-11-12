Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  # HomeController
  get "home" => "home#index"

  #AlbumController
  get "album/new" => "album#new"

  #UsersController
  get "user" => "users#show"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
