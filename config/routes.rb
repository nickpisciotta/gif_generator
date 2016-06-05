Rails.application.routes.draw do
  resources :categories, only: [:index, :new, :create, :show]
  resources :users, only: [:new, :create, :show]

end
