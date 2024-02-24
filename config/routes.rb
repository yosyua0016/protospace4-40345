Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  resources :prototypes
  root to: "prototypes#index"
end
