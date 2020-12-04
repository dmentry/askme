class AddAuthorToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :author_id, :integer
    add_index :questions, :author_id
    # add_reference :questions, :author, index: true
    # add_foreign_key :questions, :users, column: :author_id
  end
end
