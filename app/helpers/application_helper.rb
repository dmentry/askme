module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path "avatar.jpg"
    end
  end

  def questions_sklonyator(number)
    first_form  = "вопрос"
    second_form = "вопроса"
    third_form = "вопросов"

    return "пока не задали ни одного вопроса" if number == 0

    return " задали #{number} #{third_form}" if (11..14).include?(number % 100)

    last_numeral = number % 10

    if last_numeral == 1
      " задали #{number} #{first_form}"
    elsif last_numeral > 1 && last_numeral < 5
       " задали #{number} #{second_form}"
    else
      " задали #{number} #{third_form}"
    end
  end

  def hide_form(questions_count)
    if questions_count > 0
      return form_class = "user-questions buffer-both"
    else
      form_class = "invisible"
    end
  end

  def fa_icon(icon_class)
    content_tag "span", "", class: "fa fa-#{icon_class}"
  end

end
