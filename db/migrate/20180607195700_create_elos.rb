class CreateElos < ActiveRecord::Migration[5.1]
  def change
    create_table :elos do |t|
      t.integer :elo
      t.integer :user_id
      t.integer :jogo_id

      t.timestamps
    end
  end
end
