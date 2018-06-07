class Jogo < ApplicationRecord
  after_create :start_elo
  def start_elo
    User.all.each {|u|
        if Elo.where ("jogo_id = #{self.id} and user_id = #{u.id}").empty?
            elo = Elo.new({user: u, jogo: self, elo: 1200})
            elo.save
        end
    }
  end
  def to_s
      return self.nome
  end
end
