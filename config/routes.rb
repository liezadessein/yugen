Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :creative_escapes, only: [:index, :show, :new, :create, :edit, :update]
  resources :bookings, only: [:show, :create] do
  resources :payments, only: [:new, :create]
  end
end
