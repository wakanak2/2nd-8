Rails.application.routes.draw do

  devise_for :users

 resources :users do
    member do
     get :follows, :followers
    end
  end

  resources :relationships, only: [:create, :destroy]  
  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create,:destroy]
  end
  
  root 'home#top'
  get 'home/about' => 'home#about'

end
