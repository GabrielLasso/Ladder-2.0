class AddGameToPartidas < ActiveRecord::Migration[5.1]
  def change
    add_column :partidas, :game, :integer
  end
end
