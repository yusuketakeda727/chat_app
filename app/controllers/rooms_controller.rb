class RoomsController < ApplicationController
  def new   # ルームコントローラーの実装
    @room = Room.new
  end
end
