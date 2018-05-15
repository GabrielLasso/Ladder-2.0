class CreatePlayer1s < ActiveRecord::Migration[5.1]
  def change
    create_table :player1s do |t|
      t.references :player1, foreign_key: true
      t.references :player2, foreign_key: true
      t.integer :winP1
      t.integer :winP2

      t.timestamps
    end
  end
end
