class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

# room_userテーブルは中間テーブル。
# どのユーザーがどのチャットルームに参加してるかを管理する。
# userテーブルとroomsテーブルの両方を参照している。この時に使うのが「　foreign_key:true　」