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
    def personagens
    	@jogo = Jogo.find(params[:jogo])
    	@personagens = Personagem.where('jogo_id = ?', params[:jogo])
    end
    def adiciona_personagem
    	Personagem.create ({nome: params[:nome], jogo: Jogo.find(params[:jogo])}) unless params[:nome].blank?
    	redirect_to lista_personagens_path(:jogo => params[:jogo])
    end
    def remove_personagem
    	@personagem = Personagem.find(params[:char])
    	@personagem.destroy
        respond_to do |format|
            format.html { redirect_to lista_personagens_path(:jogo => params[:jogo]), notice: 'Personagem removido com sucesso.' }
            format.json { head :no_content }
        end
    end
end
