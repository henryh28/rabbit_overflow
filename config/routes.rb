RabbitOverflow::Application.routes.draw do
  root to: 'questions#index'

  resources :users
  resources :questions, except: [:edit, :update, :destroy] do
    post :upvote
    post :downvote
  end
  resources :answers, only: [:create] do
    post :upvote
    post :downvote
  end
  resources :sessions, only: [:new, :create, :destroy]
end
