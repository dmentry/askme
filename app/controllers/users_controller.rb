class UsersController < ApplicationController
  def index
    @users = [
        User.new(
            id: 1,
            name: "Vadim",
            username: "installero",
            avatar_url: "https://secure.gravatar.com/avatar/71269686e0f757ddb4f73614f43ae445?s=100"
        ),
        User.new(id: 2, name: "Misha", username: "aristofun")
    ]
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

    @questions = [Question.new(text: "Как дела?", created_at: Date.parse("24.11.2020")),
                  Question.new(text: "Какая погода?", created_at: Date.parse("25.11.2020"))
    ]

    @new_question = Question.new
  end
end
