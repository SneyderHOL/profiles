Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET /
  root to: "home#index"

  # GET /profiles
  get "profiles", to: "profiles#list"
  # GET /new
  get "new", to: "profiles#new"
  # POST /new
  post "new", to: "profiles#create"
end
