class UsersController < ApplicationController
    def index
        @jogos = Jogo.all
    end
    def list_users
        @usuarios = User.all
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
    	puts "!!!!!!!!!!!!!!!!!!!!"
    	puts usuario.inspect
    	usuario.remove_admin()
    	puts usuario.inspect
        redirect_to listar_usuarios_path
    end
end
