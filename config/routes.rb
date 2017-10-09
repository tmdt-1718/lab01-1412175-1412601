Rails.application.routes.draw do

  get 'about',to: 'about#index', as: :about
  resources :album, only: [:index, :show]
  resources :blog, only: [:index, :show]
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
