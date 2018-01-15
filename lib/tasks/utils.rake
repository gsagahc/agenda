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
          street: Faker::Address.street_address ,
          city: Faker::Address.city   ,
          state: Faker::Address.state_abbr,
          contact: contact
        ) 
      end   
       puts "Gerando telefones aleatórios..."
        Contact.all.each do |contact|
          Random.rand(1..5).times do |i|
           Phone.create!(
            phone: Faker::PhoneNumber.phone_number ,
            contact: contact
          ) 
        end   
          
  end
  puts "Telefones gerados com sucesso!"  
end
end
