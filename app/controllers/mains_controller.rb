class MainsController < ApplicationController
    def index
        @jogos = Jogo.all
    end
    def delete_main
        id = params[:id]
        unless id.nil?
            personagem = Personagem.find(id)
            current_user.delete_main(personagem)
        end
        redirect_to mains_path
    end
    def add_main
        id = params[:char_id]
        unless id.nil?
            personagem = Personagem.find(id)
            current_user.add_main(personagem)
        end
        redirect_to mains_path
    end
end
