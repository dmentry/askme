class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])

    if user.present?
      session[:user_id] = user.id
      redirect_to root_url, notice: "Вы успешно залогинены"
    else
      flash.now.alert = "Неправильный мейл или пароль"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Вы разлогинились, приходите еще!"
  end
end
