RabbitOverflow::Application.routes.draw do
  root to: 'questions#index'

  resources :users, only: [:new, :create] do
    get :login
    get :logout
  end
  resources :questions, except: [:edit, :update, :destroy]
  resources :answers, only: [:create]
  resources :votes
end
