class AddColorbgToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :color_background, :string
  end
end
