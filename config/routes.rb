Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  resources :users
  resources :asounds
  resources :gsounds
  resources :bsounds
  resources :psounds
  resources :likes
  resources :relationships
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
