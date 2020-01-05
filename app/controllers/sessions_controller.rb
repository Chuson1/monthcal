class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(user_params)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url, success: 'ログインに成功しました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url, info: "ログアウトしました"
  end
  
  private
    def user_params
      params.require(:session).permit(:email)
    end
end
