class AddEloToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :elo, :integer
  end
end
