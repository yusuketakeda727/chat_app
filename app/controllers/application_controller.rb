class ApplicationController < ActionController::Base
  before_action :authenticate_user!   # ログインしてないユーザーをログインページに促す
  before_action :configure_permitted_parameters, if: :devise_controller?    # devise Gem を使った時のnameカラムに保存を可能にする記述。

  private
  #ここでconfigure_permitted_parametersメソッドの定義を行なう。
  # deviseをインストールすることでdevise_parameter_sanitizerメソッドが使えるようになる。
  # deviseでユーザー登録をする場合に使用でき、「特定のカラムを許容する」メソッド。
  # 今回は「nameカラム」を追加したから、このメソッドを使用し、「name」キーの内容の保存をpermitメソッドで許可している。
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
