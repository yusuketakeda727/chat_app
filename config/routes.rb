Rails.application.routes.draw do
  get 'messages/index'
  root to: "messages#index"     # ルーティングの設定（仮）
end
