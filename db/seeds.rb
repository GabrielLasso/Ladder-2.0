# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pm = Jogo.create(nome: "Project M")
melee =Jogo.create(nome: "Meele")
un = Jogo.create(nome: "UnderNight")

Personagem.create(nome: "Fox"           , jogo: melee)
Personagem.create(nome: "Jigglypuff"    , jogo: melee)
Personagem.create(nome: "Falco"         , jogo: melee)
Personagem.create(nome: "Marth"         , jogo: melee)
Personagem.create(nome: "Sheik"         , jogo: melee)

Personagem.create(nome: "Fox"           , jogo: pm)
Personagem.create(nome: "Jigglypuff"    , jogo: pm)
Personagem.create(nome: "Falco"         , jogo: pm)
Personagem.create(nome: "Marth"         , jogo: pm)
Personagem.create(nome: "Sheik"         , jogo: pm)

Personagem.create(nome: "Sei lá"        , jogo: un)

User.create(
    username: "k1",
    email: "k1tanaka@hotmail.com",
    password: "k1tanaka",
    password_confirmation: "k1tanaka"
)

User.create(
    username: "tui",
    email: "tui@usp.com",
    password: "123456",
    password_confirmation: "123456"
)

User.create(
    username: "mathias",
    email: "mathia@usp.com",
    password: "123456",
    password_confirmation: "123456"
)

User.create(
    username: "lasso",
    email: "lasso@usp.com",
    password: "123456",
    password_confirmation: "123456"
)

User.where("username = 'lasso'")[0].update_column(:admin, true)
