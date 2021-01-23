class RoomsController < ApplicationController

  def new   # ルームコントローラーの実装
    @room = Room.new
  end

  def create    # 下記の記述でDBに値を保存できるようにする。
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
