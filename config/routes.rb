RabbitOverflow::Application.routes.draw do
  root :to => 'questions#index'

  resources :users, only: [:new, :create]
  resources :questions, except: [:edit, :update, :destroy]
  resources :answers, only: [:create]
  resources :votes
end
