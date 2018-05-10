class RemoveEloFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :elo, :integer
  end
end
