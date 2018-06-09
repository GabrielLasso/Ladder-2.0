class UsersController < ApplicationController
    def index
        @jogos = Jogo.all
    end
    def list_users
        @usuarios = User.all
    end
end
