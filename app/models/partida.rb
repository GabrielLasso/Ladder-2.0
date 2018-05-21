class Partida < ApplicationRecord
    belongs_to :player1, class_name: "User"
    belongs_to :player2, class_name: "User"
    def update_elos
        case self.game
        when 1
            elo1 = self.player1.elo_1
            elo2 = self.player2.elo_1
        when 2
            elo1 = self.player1.elo_2
            elo2 = self.player2.elo_2
        when 3
            elo1 = self.player1.elo_3
            elo2 = self.player2.elo_3
        end
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
