class Personagem < ApplicationRecord
    belongs_to :jogo
    has_and_belongs_to_many :user
    def to_s
        return self.nome
    end
end
