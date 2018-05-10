class AddElosFromUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :elo_pm, :integer
    add_column :users, :elo_melee, :integer
    add_column :users, :elo_undernight, :integer
  end
end
