Rails.application.routes.draw do
  # get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  resources :restaurants, only: [:index, :new, :create, :show] do
    # get 'restaurants/:id/reviews', to: 'reviews#index'
    resources :reviews, only: [:new, :create]
  end

end
