Rails.application.routes.draw do
  # GET /
  root to: "home#index"
  resources :users
end
