Rails.application.routes.draw do
  root to: "home#index"

  resources :categories, only: [:index, :show]
  resources :users, only: [:new, :create, :show]

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  resources :gifs, only: [:index, :destroy]

  namespace :admin do
    resources :categories
  end

end
