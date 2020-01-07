Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  resources :nikkans, only: [:index]
  resources :bellies, only: [:index, :create]
  resources :chests, only: [:index, :create]
  resources :trains, only: [:index, :create]
  resources :nutritions, only: [:index]
  resources :cares, only: [:index]
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create, :show, :destroy] do
      resources :comments, only: [:create]
    end
 end
end