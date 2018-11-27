Rails.application.routes.draw do


  get 'inquiries/index'
  get 'inquiries/confirm'
  get 'inquiries/thanks'
  get 'inquiries' => 'inquiries#index'
  post 'inquiries/confirm' => 'inquiries#confirm'
  post 'inquiries/thanks' => 'inquiries#thanks'



  get '/taikai' => 'users#taikai', as:'users_taikai'

  devise_for :users
  root to: 'homes#top'

  resources :asounds do
    post 'add' => 'afavorites#create'
    delete '/add' => 'afavorites#destroy'
    resource :alikes, only: [:create, :destroy]
  end


  resources :gsounds do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
    resource :likes, only: [:create, :destroy]
  end


  resources :bsounds do
    post 'add' => 'bfavorites#create'
    delete '/add' => 'bfavorites#destroy'
    resource :blikes, only: [:create, :destroy]
  end

  resources :psounds do
    post 'add' => 'pfavorites#create'
    delete '/add' => 'pfavorites#destroy'
    resource :plikes, only: [:create, :destroy]
  end


  resources :relationships
  resources :homes
  resources :favorites
  resources :afavorites
  resources :bfavorites
  resources :pfavorites
  resources :inquiries

  resources :users do
    member do
     get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
