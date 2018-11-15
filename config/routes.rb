Rails.application.routes.draw do

  
  devise_for :users
  root to: 'homes#top'
  resources :asounds
  resources :gsounds
  resources :bsounds
  resources :psounds
  resources :likes
  resources :relationships
  resources :homes

  resources :users do
    member do
     get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
