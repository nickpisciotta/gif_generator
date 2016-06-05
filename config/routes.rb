Rails.application.routes.draw do
  resources :categories, only: [:index, :new, :create, :show]
  resources :users, only: [:new, :create, :show]

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
