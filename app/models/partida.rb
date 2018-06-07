class PartidaValidator < ActiveModel::Validator
    def validate (record)
        unless (record.winP1 == 3 or record.winP2 == 3) and record.winP1 + record.winP2 <= 5
            record.errors[:resultados] << ": Por favor, insira um resultado válido."
        end
    end
end

class Partida < ApplicationRecord
    belongs_to :player1, class_name: "User"
    belongs_to :player2, class_name: "User"
    validates :player1, :player2, :winP1, :winP2, :game, presence: true
    validates_with PartidaValidator
    after_save :update_elos
    def update_elos
        elo1 = self.player1.elo(self.game)
        elo2 = self.player2.elo(self.game)
        total_games = self.winP1+self.winP2
        score1 = self.winP1/total_games.to_f
        score2 = self.winP2/total_games.to_f
        e1 = 1.0/(1+10**((elo2-elo1)/400.0))
        e2 = 1.0/(1+10**((elo1-elo2)/400.0))
        new_elo1 = elo1 + 32*(score1-e1)
        new_elo2 = elo2 + 32*(score2-e2)
        player1.update_elo(self.game, new_elo1.to_i)
        player2.update_elo(self.game, new_elo2.to_i)
    end
end
