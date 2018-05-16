class AddElosFromUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :elo_1, :integer
    add_column :users, :elo_2, :integer
    add_column :users, :elo_3, :integer
  end
end
