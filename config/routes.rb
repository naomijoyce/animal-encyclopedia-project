Rails.application.routes.draw do
  get 'sessions/new'
  resources :animals
  resources :users
  resources :comments, only: :create
  resources :sessions, only: [:new,:create]
  delete '/sessions', to: 'sessions#destroy', as: "log_out"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
