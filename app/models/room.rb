class Room < ApplicationRecord
  has_many :room_users
  has_many :user, through: :room_users

  # ルーム名が存在（presence）している場合のみ作成可（true）するバリデーション
  validates :name, presence: true
  
end
