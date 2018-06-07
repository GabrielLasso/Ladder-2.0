class CreateJoinTableMains < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :personagems do |t|
      # t.index [:user_id, :personagem_id]
      # t.index [:personagem_id, :user_id]
    end
  end
end
