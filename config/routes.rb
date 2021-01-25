Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"     # ルーティングの設定（仮）
  resources :users, only: [:edit, :update]    # ユーザー編集に必要なルーティングは edit, update 
  resources :rooms, only: [:new, :create]     # チャットルームに必要なアクションは new, create
end
