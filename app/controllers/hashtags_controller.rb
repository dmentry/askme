class HashtagsController < ApplicationController
  def show
    # локальная переменная
    hashtag = Hashtag.with_questions.find_by!(text: params[:text])
    @questions = hashtag.questions
  end
end