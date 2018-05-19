class CreateJogos < ActiveRecord::Migration[5.1]
  def change
    create_table :jogos do |t|
      t.string :nome
      t.integer :valor

      t.timestamps
    end
  end
end
