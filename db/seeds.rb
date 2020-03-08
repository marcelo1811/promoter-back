# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating admin..."
User.create!(
  email: "admin@test.com",
  password: "marcelo123",
  role: "admin",
  first_name: "Admin",
  last_name: "Miyachi"
)
puts "admin created!"

puts "creatign establishments..."
Establishment.create!(
  admin_id: User.where(role: "admin").first.id,
  name: "Walmart",
  address: "Rua Desembargador Westphalen, 824, Curitiba, Paraná"
)
puts "establishments created!"

puts "creating promoters..."
user = User.create!(
  email: "promoter@test.com",
  password: "marcelo123",
  role: "promoter",
  first_name: "Promoter",
  last_name: "Miyachi"
)
Promoter.create!(
  user_id: user.id,
  establishment_id: Establishment.last.id,
)
puts "promoters created!"

puts "creating registers..."
Register.create!(
  promoter_id: Promoter.last.id,
  establishment_id: Establishment.last.id
)
puts "registers created!"
