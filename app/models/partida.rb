$game1 = "Melee"
$game2 = "Project M"
$game3 = "Undernight"
class Partida < ApplicationRecord
    belongs_to :player1, class_name: "User"
    belongs_to :player2, class_name: "User"
    end
end
