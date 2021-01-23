class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false   # roomsテーブルに保存するのはroom名のみ
      t.timestamps
    end
  end
end
