# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Gerando os tipos de contatos..."
   Kind.create!([{description: "Amigo"},{description: "Contato"},{description: "Comercial"}]) 
puts "Contatos gerados com sucesso!"

puts "Gerando 10 contatos aleatórios..."
  10.times do |i|
     Contact.create!(
     nome: Faker::Name.name,
     email: Faker::Internet.email,
     kind: Kind.all.sample,
     rmk: Faker:: Lorem.paragraph([1,2,3,4,5].sample)
    ) 
  end   
puts "Contatos gerados com sucesso!"  