class AddUniquenessConstraintToUsername < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :username, unique: true, name: 'uniq_username'
  end
end
