class CreatePartidas < ActiveRecord::Migration[5.1]
  def change
    create_table :partidas do |t|
      t.integer :winP1
      t.integer :winP2

      t.timestamps
    end
  end
end
