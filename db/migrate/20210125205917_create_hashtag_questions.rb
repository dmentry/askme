class CreateHashtagQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :hashtag_questions do |t|

      # Запись обязательно связывает строку в модели hashtag со строкой в модели question
      t.belongs_to :hashtag, foreign_key: true, null: false
      t.belongs_to :question, foreign_key: true, null: false

      t.timestamps
    end
  end
end
