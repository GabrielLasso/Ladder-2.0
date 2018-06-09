class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
    validates_uniqueness_of :username
    after_create :start_elo
    has_and_belongs_to_many :personagem
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
    
    def mains
        return self.personagem
    end
    
    def add_main (personagem)
        if self.personagem.where("personagem_id=#{personagem.id}").empty?
            self.personagem << personagem
        end
    end
    
    def delete_main (personagem)
        self.personagem.delete (personagem)
    end

    def add_admin
        self.admin = true
        self.save
    end

    def remove_admin
        self.admin = false
        self.save
    end
end
