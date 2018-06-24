class JogosController < ApplicationController
    def index
        @jogos = Jogo.all
    end
    def new_game
        Jogo.create ({nome: params[:nome]}) unless params[:nome].blank?
        redirect_to listar_jogos_path
    end
    def remove_jogo
    	@jogo = Jogo.find(params[:jogo])
    	if !current_user.admin?
            redirect_to listar_jogos_path
        else
            @jogo.destroy
            respond_to do |format|
                format.html { redirect_to listar_jogos_path, notice: 'Jogo removido com sucesso.' }
                format.json { head :no_content }
            end
        end

    end
end
