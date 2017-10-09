Rails.application.routes.draw do

  get 'about',to: 'about#index', as: :about
  # get 'album',to: 'album#index', as: :album
  resources :album, only: [:index, :show]
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
