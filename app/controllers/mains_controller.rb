class MainsController < ApplicationController
    def index
        @jogos = Jogo.all
    end
    def delete_main
        id = params[:id]
        personagem = Personagem.where("id=#{id}")[0]
        current_user.delete_main(personagem)
        redirect_to mains_path
    end
    def add_main
        id = params[:id]
        100.times {puts params}
        personagem = Personagem.where("id=#{id}")[0]
        current_user.add_main(personagem)
        redirect_to mains_path
    end
end
