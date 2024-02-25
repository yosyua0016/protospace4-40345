Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only: [:index, :new, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:show]
  root to: "prototypes#index"

  resources :prototypes do
    resources :comments, only: [:create]
  end
end
