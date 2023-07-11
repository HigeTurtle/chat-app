Rails.application.routes.draw do
  devise_for :users

  #ルートパスへのアクセスがあったら、messages_controllerのindexアクションが呼び出される
  root to: "messages#index"

  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
