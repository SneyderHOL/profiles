Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  # GET /
  root to: "home#index"
  get 'about', to: "home#about"
  get ':username', to: "users#show", as: :user
  resources :users, only: [:show]
end
