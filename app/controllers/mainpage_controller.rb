class MainpageController < ApplicationController
    def delete_main (personagem)
        current_user.delete_main(personagem)
    end
end
