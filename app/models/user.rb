class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
    validates_uniqueness_of :username
    after_create :start_elo
    def initialize(param)
        super(param)
        self.admin = false
    end
    def start_elo
        Jogo.all.each {|j|
            if Elo.where ("jogo_id = #{j.id} and user_id = #{self.id}").empty?
                elo = Elo.new({user: self, jogo: j, elo: 1200})
                elo.save
            end
        }
    end
    def elo (jogo)
        query = Elo.where ("jogo_id = #{jogo} and user_id = #{self.id}")
        elo = query[0].elo
        return elo
    end
    def to_s
        return self.username
    end
    def partidas
        return Partida.where("player1_id = ? OR player2_id = ?", self.id, self.id)
    end
    def update_elo(jogo, new_elo)
        query = Elo.where ("jogo_id = #{jogo} and user_id = #{self.id}")
        elo = query[0]
        elo.update_column(:elo, new_elo)
    end
end
