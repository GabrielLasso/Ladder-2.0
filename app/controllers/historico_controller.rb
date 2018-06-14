class HistoricoController < ApplicationController
    def list_by_user
        user_id = current_user.id
        @partidas = Partida.where ("player1_id = #{user_id} or player2_id = #{user_id}")
    end
    def list_by_game
        @jogo_id =  params[:id]
        @partidas = Partida.where ("game = #{@jogo_id}")
    end
end
