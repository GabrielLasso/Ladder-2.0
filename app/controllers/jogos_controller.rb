class JogosController < ApplicationController
    def index
        @jogos = Jogo.all
    end
    def new_game
        Jogo.create ({nome: params[:nome]}) unless params[:nome].blank?
        redirect_to listar_jogos_path
    end
end
