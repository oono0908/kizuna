Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  resources :nikkans, only: [:index]
  resources :bellies, only: [:index, :create]
  resources :backs, only: [:index, :create]
  resources :hips, only: [:index, :create]
  resources :calves, only: [:index, :create]
  resources :arms, only: [:index, :create]
  resources :thighs, only: [:index, :create]
  resources :chests, only: [:index, :create]
  resources :trains, only: [:index, :create]
  resources :nutritions, only: [:index]
  resources :cares, only: [:index]
  resources :users, only: [:index, :edit, :update, :show]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create, :show, :destroy] do
      resources :comments, only: [:create, :destroy] do
        resources :likes, only: [:create, :destroy]
      end
    end
 end
end