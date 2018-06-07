require 'test_helper'

class PartidaTest < ActiveSupport::TestCase
   #test "the truth" do
   #  assert true
   #end
    test "Consegue criar partida" do
        user1 = User.find(1)
        user2 = User.find(2)
        partida = Partida.new({player1: user1, player2: user2, game: 1, winP1: 3, winP2: 2})
        assert partida.save
    end
    test "Requer player 1" do
        user2 = User.find(2)
        partida = Partida.new({player2: user2, game: 1, winP1: 3, winP2: 2})
        assert_not partida.save
    end
    test "Requer player 2" do
        user1 = User.find(1)
        partida = Partida.new({player1: user1, game: 1, winP1: 3, winP2: 2})
        assert_not partida.save
    end
    test "Tem que ser melhor de 5" do
        user1 = User.find(1)
        user2 = User.find(2)
        partida = Partida.new({player1: user1, player2: user2, game: 1, winP1: 2, winP2: 2})
        assert_not partida.save
    end
    test "Requer um jogo" do
        user1 = User.find(1)
        user2 = User.find(2)
        partida = Partida.new({player1: user1, player2: user2, winP1: 3, winP2: 2})
        assert_not partida.save
    end
    test "Atualiza o elo" do
        user1 = User.find(1)
        user2 = User.find(2)
        old_elo1 = user1.elo(1)
        old_elo2 = user2.elo(1)
        partida = Partida.new({player1: user1, player2: user2, game: 1, winP1: 3, winP2: 2})
        partida.save
        assert user1.elo(1) > old_elo1 and user2.elo(1) < old_elo2
    end
end
