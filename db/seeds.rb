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
Personagem.create(nome: "Mario"         , jogo: melee)
Personagem.create(nome: "Dr.Mario"      , jogo: melee)
Personagem.create(nome: "Luigi"         , jogo: melee)
Personagem.create(nome: "Bowser"        , jogo: melee)
Personagem.create(nome: "Peach"         , jogo: melee)
Personagem.create(nome: "Yoshi"         , jogo: melee)
Personagem.create(nome: "D K"           , jogo: melee)
Personagem.create(nome: "C. Falcon"     , jogo: melee)
Personagem.create(nome: "Ganondorf"     , jogo: melee)
Personagem.create(nome: "Ness"          , jogo: melee)
Personagem.create(nome: "Ice Climbers"  , jogo: melee)
Personagem.create(nome: "Kirby"         , jogo: melee)
Personagem.create(nome: "Samus"         , jogo: melee)
Personagem.create(nome: "Zelda"         , jogo: melee)
Personagem.create(nome: "Link"          , jogo: melee)
Personagem.create(nome: "Young Link"    , jogo: melee)
Personagem.create(nome: "Pichu"         , jogo: melee)
Personagem.create(nome: "Pikachu"       , jogo: melee)
Personagem.create(nome: "Mewtwo"        , jogo: melee)
Personagem.create(nome: "Mr. Game&Watch", jogo: melee)
Personagem.create(nome: "Roy"           , jogo: melee)
Personagem.create(nome: "Sheik"         , jogo: melee)

Personagem.create(nome: "Fox"           , jogo: pm)
Personagem.create(nome: "Jigglypuff"    , jogo: pm)
Personagem.create(nome: "Falco"         , jogo: pm)
Personagem.create(nome: "Marth"         , jogo: pm)
Personagem.create(nome: "Sheik"         , jogo: pm)
Personagem.create(nome: "Wario"         , jogo: pm)
Personagem.create(nome: "Mario"         , jogo: pm)
Personagem.create(nome: "Luigi"         , jogo: pm)
Personagem.create(nome: "Peach"         , jogo: pm)
Personagem.create(nome: "Yoshi"         , jogo: pm)
Personagem.create(nome: "Bowser"        , jogo: pm)
Personagem.create(nome: "Donkey Kong"   , jogo: pm)
Personagem.create(nome: "Diddy Kong"    , jogo: pm)
Personagem.create(nome: "Captain Falcon", jogo: pm)
Personagem.create(nome: "Wolf"          , jogo: pm)
Personagem.create(nome: "Ice Climbers"  , jogo: pm)
Personagem.create(nome: "Zelda"         , jogo: pm)
Personagem.create(nome: "Link"          , jogo: pm)
Personagem.create(nome: "Toon Link"     , jogo: pm)
Personagem.create(nome: "Ganondorf"     , jogo: pm)
Personagem.create(nome: "Mewtwo"        , jogo: pm)
Personagem.create(nome: "Lucario"       , jogo: pm)
Personagem.create(nome: "Pikachu"       , jogo: pm)
Personagem.create(nome: "Squirtle"      , jogo: pm)
Personagem.create(nome: "Ivysaur"       , jogo: pm)
Personagem.create(nome: "Charizard"     , jogo: pm)
Personagem.create(nome: "Samus"         , jogo: pm)
Personagem.create(nome: "ZeroSuit Samus", jogo: pm)
Personagem.create(nome: "Lucas"         , jogo: pm)
Personagem.create(nome: "Ness"          , jogo: pm)
Personagem.create(nome: "Pit"           , jogo: pm)
Personagem.create(nome: "Kirby"         , jogo: pm)
Personagem.create(nome: "Meta Knight"   , jogo: pm)
Personagem.create(nome: "Dedede"        , jogo: pm)
Personagem.create(nome: "Ike"           , jogo: pm)
Personagem.create(nome: "Roy"           , jogo: pm)
Personagem.create(nome: "Olimar"        , jogo: pm)
Personagem.create(nome: "R.O.B."        , jogo: pm)
Personagem.create(nome: "Mr. Game&Watch", jogo: pm)
Personagem.create(nome: "Snake"         , jogo: pm)
Personagem.create(nome: "Sonic"         , jogo: pm)

Personagem.create(nome: "Hyde"          , jogo: un)
Personagem.create(nome: "Linne"         , jogo: un)
Personagem.create(nome: "Waldstein"     , jogo: un)
Personagem.create(nome: "Carmine"       , jogo: un)
Personagem.create(nome: "Orie"          , jogo: un)
Personagem.create(nome: "Gordeau"       , jogo: un)
Personagem.create(nome: "Merkava"       , jogo: un)
Personagem.create(nome: "Vatista"       , jogo: un)
Personagem.create(nome: "Seth"          , jogo: un)
Personagem.create(nome: "Yuzuriha"      , jogo: un)
Personagem.create(nome: "Hilda"         , jogo: un)
Personagem.create(nome: "Eltnum"        , jogo: un)
Personagem.create(nome: "Chaos"         , jogo: un)
Personagem.create(nome: "Akatsuki"      , jogo: un)
Personagem.create(nome: "Nanase"        , jogo: un)
Personagem.create(nome: "Byakuya"       , jogo: un)
Personagem.create(nome: "Mika"          , jogo: un)
Personagem.create(nome: "Wagner"        , jogo: un)
Personagem.create(nome: "Enkidu"        , jogo: un)
Personagem.create(nome: "Phonon"        , jogo: un)

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
User.where("username = 'k1'")[0].update_column(:admin, true)
