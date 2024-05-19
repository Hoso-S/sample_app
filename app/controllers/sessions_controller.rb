class SessionsController < ApplicationController

  def new
    # x @session = Session.new
    # o scope: :session + url: login_path
  end

  # POST /login
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      reset_session      # ログインの直前に必ずこれを書くこと
      # Success
      log_in user
      redirect_to user
    else
      # Failure
      # alert-danger => 赤色のフラッシュ
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end
end
