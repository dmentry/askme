class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
    name: "Dima",
    username: "dack",
    avatar_url: "https://goodprogrammer.ru/system/avatars/000/016/134/503d2ca27264c2567d5cde553587451d98539fc1_x300.jpg?1602616080"
    )
  end
end
