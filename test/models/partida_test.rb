require 'test_helper'

class PartidaTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
    test "Consegue criar partida" do
        user1 = User.new({username: "Player1", email: "player1@ladder.com", password: "123456"})
        user1.save
        user2 = User.new({username: "Player2", email: "player2@ladder.com", password: "123456"})
        user2.save
        partida = Partida.new
        partida.player1 = user1
        partida.player2 = user2
        partida.game = 1
        partida.winP1 = 3
        partida.winP2 = 2
        assert partida.save
    end
    test "Requer player 1" do
        user2 = User.new({username: "Player2", email: "player2@ladder.com", password: "123456"})
        user2.save
        partida = Partida.new
        partida.player2 = user2
        partida.game = 1
        partida.winP1 = 3
        partida.winP2 = 2
        assert_not partida.save
    end
    test "Requer player 2" do
        user1 = User.new({username: "Player1", email: "player1@ladder.com", password: "123456"})
        user1.save
        partida = Partida.new
        partida.player2 = user1
        partida.game = 1
        partida.winP1 = 3
        partida.winP2 = 2
        assert_not partida.save
    end
    test "Tem que ser melhor de 5" do
        user1 = User.new({username: "Player1", email: "player1@ladder.com", password: "123456"})
        user1.save
        user2 = User.new({username: "Player2", email: "player2@ladder.com", password: "123456"})
        user2.save
        partida = Partida.new
        partida.player1 = user1
        partida.player2 = user2
        partida.game = 1
        partida.winP1 = 2
        partida.winP2 = 2
        assert_not partida.save
    end
    test "Requer um jogo" do
        user1 = User.new({username: "Player1", email: "player1@ladder.com", password: "123456"})
        user1.save
        user2 = User.new({username: "Player2", email: "player2@ladder.com", password: "123456"})
        user2.save
        partida = Partida.new
        partida.player1 = user1
        partida.player2 = user2
        partida.winP1 = 2
        partida.winP2 = 3
        assert_not partida.save
    end
end
