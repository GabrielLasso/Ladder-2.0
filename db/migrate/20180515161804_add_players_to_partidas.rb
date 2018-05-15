class AddPlayersToPartidas < ActiveRecord::Migration[5.1]
  def change
    add_column :partidas, :player1_id, :integer
    add_column :partidas, :player2_id, :integer
  end
end
