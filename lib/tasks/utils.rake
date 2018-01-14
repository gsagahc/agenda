namespace :utils do
  desc "Popular banco de dados"
  task seed: :environment do
    puts "Gerando 10 contatos aleatórios..."
    10.times do |i|
       Contact.create!(
       nome: Faker::Name.name,
       email: Faker::Internet.email,
       kind: Kind.all.sample,
       rmk: Faker:: Lorem.paragraph([1,2,3,4,5].sample)
      ) 
    end   
      puts "10 Contatos gerados com sucesso!"  
      puts "Gerando endereços aleatórios..."
      Contact.all.each do |contact|
         Address.create!(
          street:Faker::Address::
          city: ,
          state: Kind.all.sample,
          contact:contact
        ) 
      end   
        puts "10 Contatos gerados com sucesso!"  
  end

end
