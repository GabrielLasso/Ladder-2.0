class CreatePersonagems < ActiveRecord::Migration[5.1]
  def change
    create_table :personagems do |t|
      t.string :nome
      t.integer :jogo_id

      t.timestamps
    end
  end
end
