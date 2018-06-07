class CreateJogos < ActiveRecord::Migration[5.1]
  def change
    create_table :jogos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
