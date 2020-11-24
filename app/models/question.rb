class Question < ApplicationRecord
  belongs_to :user

  validates :text, :user, presence: true
  validates :text, length: { maximum: 255, message: "question must not be longer than 255 characters" }
end
