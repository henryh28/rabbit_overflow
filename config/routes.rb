RabbitOverflow::Application.routes.draw do
  root to: 'questions#index'

  resources :users
  resources :questions, except: [:edit, :update, :destroy]
  resources :answers, only: [:create]
  resources :votes
  resources :sessions, only: [:new, :create, :destroy]
end
