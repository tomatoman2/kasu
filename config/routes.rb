Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users, only: [:edit, :update, :show]
  resources :categories, only: [:show]
  resources :messages do
    resources :comments, only: :create
  end
end
