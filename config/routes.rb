Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants do
    resources :reservations, only: [:create]
  end
  resources :reservations, only: [:destroy, :edit, :update, :show]
  get "dashboard", to: "dashboard#dashboard"
end
