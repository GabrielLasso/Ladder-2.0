# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

for jogo in ["PM", "Melee", "UnderNight"]
	Jogo.create(nome: jogo)
end

User.where("username = 'lasso'")[0].update_column(:admin, true)
