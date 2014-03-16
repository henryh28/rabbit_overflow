RabbitOverflow::Application.routes.draw do
  root to: 'questions#index'

  resources :users do
    resources :votes, only: [:create, :destroy]
  end

  resources :questions, except: [:edit, :update, :destroy] do
    resources :votes, only: [:create, :destroy]
    post :best
  end

  resources :answers, only: [:create] do
    resources :votes, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]
end
