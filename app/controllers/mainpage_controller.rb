class MainpageController < ApplicationController
    def delete_main ()
        id = params[:id]
        personagem = Personagem.where("id=#{id}")[0]
        current_user.delete_main(personagem)
        redirect_to root_path
    end
    def index ()
    	@user = current_user
        @jogos = Jogo.all
        @mains = @user.mains
    end
end
