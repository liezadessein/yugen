Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :creative_escapes, only: [:index, :show, :new, :create]
end
