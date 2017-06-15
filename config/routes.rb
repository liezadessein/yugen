Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'creative_escapes#index'
  resources :creative_escapes, only: [:index, :show, :new, :create, :edit, :update]
  resources :bookings, only: [:show, :create] do
  resources :payments, only: [:new, :create]
  end
end
