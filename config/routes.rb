Rails.application.routes.draw do

  resources :user, only: [:new, :create]

  get 'about',to: 'about#index', as: :about
  get '/session/login', to: 'session#new', as: :login
  post '/session/login', to: 'session#create', as: nil
  delete '/session/logout', to: 'session#destroy', as: :logout

  resources :album, only: [:index, :show]
  resources :blog, only: [:index, :show, :create, :new]
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
