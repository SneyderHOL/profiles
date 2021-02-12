Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET /
  root to: "home#index"
=begin
  # GET /profiles
  get "profiles", to: "profiles#list"
  # GET /new
  get "new", to: "profiles#new"
  # GET /show
  get "show/:id", to: "profiles#show"
  # POST /new
  post "new", to: "profiles#create"
  # GET /list
  get "list", to: "profiles#list"
=end
  resources :users
end
