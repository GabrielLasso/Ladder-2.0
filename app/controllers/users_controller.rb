class UsersController < ApplicationController
    def index
        @jogos = Jogo.all
    end
    def list_users
        @usuarios = User.all
        @jogos = Jogo.all
    end
    def add_admin
    	id = params[:userId]
    	usuario = User.find(id)
    	usuario.add_admin()
        redirect_to listar_usuarios_path
    end
    def remove_admin
    	id = params[:userId]
    	usuario = User.find(id)
    	usuario.remove_admin()
    	redirect_to listar_usuarios_path
    end

    def aplica_punicao
        usuario = User.find(params[:userId])
        jogo = Jogo.find(params[:jogo])
        elo = usuario.elo(jogo.id) - (params[:pontos][:quantidade]).to_i
        puts(params[:pontos][:quantidade])
        usuario.update_elo(jogo.id, elo)
        redirect_to listar_usuarios_path
    end
    def profile
        @user = User.find params[:id]
    end
end
