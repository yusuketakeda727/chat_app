class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :name, presence: true   # nameが空の場合は、DBに保存しないというバリデーションを設定する。

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

  validates :name, presence: true
end
