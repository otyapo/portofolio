Rails.application.routes.draw do

  
  devise_for :users
  root to: 'homes#top'
  resources :asounds
  resources :gsounds do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
    resource :likes, only: [:create, :destroy]
    
  end
  resources :bsounds
  resources :psounds
  resources :relationships
  resources :homes
  resources :favorites

  resources :users do
    member do
     get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
