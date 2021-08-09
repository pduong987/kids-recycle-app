Rails.application.routes.draw do
  get 'listings/index'
  get 'listings/sell'
  get 'listings/swap'
  get 'listings/buy'
  post 'listings/create'
  get 'listings/index'
  get 'listings/sell'
  get 'listings/swap'
  get 'listings/buy'
  get 'listings/:listing_id', to: 'listings#show'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
  
end
