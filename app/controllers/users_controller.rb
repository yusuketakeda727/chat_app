class UsersController < ApplicationController

  def edit  # editアクションの定義
  end

  def update  # updateアクションの定義
    if current_user.update(user_params)   # current_user.updateに成功した場合、root（チャット画面）にリダイレクトする。
      redirect_to root_path
    else    # 失敗した場合はeditのビューに行く。
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
