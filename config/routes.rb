# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"
  resources :comments
  resources :images
  resources :links
  resources :posts do
    resources :comments, only: :create
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
