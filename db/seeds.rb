puts "Generating seeds..."

puts "Destroying old seeds..."
# Delete previous seeds
# HAS TO BE ON THIS ORDER!
Volunteer.destroy_all
Ngo.destroy_all
User.destroy_all
Match.destroy_all




user_emails = [ # HAS TO BE UNIQUE
  "a@t.c",
  "b@t.c",
  "c@t.c",
  "d@t.c",
  "e@t.c",
  "f@t.c",
  "g@t.c",
  "h@t.c",
  "i@t.c",
] # length: 9


addresses = [ # Can repeat
  "Rua Mourato Coelho, 100, São Paulo",
  "Alameda Ralf Bruno Gross, 414, Santa Catarina",
  "Av. Sabiá, 825 - Indianópolis, São Paulo",
  "Rua girassol, 1921, São Paulo",
  "Praça dos Três Poderes - Brasília, DF, 70150-900",
  "Rua Vergueiro, 1000 - Paraíso, São Paulo",
  "R. Álvares Penteado, 112 - Centro, São Paulo",
  "R. Ubaldino do Amaral, 37 - Alto da Glória, Curitiba",
  "Rua Mourato Coelho, 1404, São Paulo"
] # length: 9


puts "Creating new seeds..."
# CREATE ngo
ngos = []
ngo0 = Ngo.create!(name: "Fundação do ZBC", responsible: Faker::Name.name, mini_description: Forgery(:lorem_ipsum).words(20) , full_description: Forgery(:lorem_ipsum).words(140) , phone: Faker::PhoneNumber.phone_number, address: addresses[0], purpose: Ngo::PURPOSE.sample(), website: Faker::Internet.url, facebook: "#{Faker::Name.first_name}_#{Faker::Name.last_name}", user: User.create(email: user_emails[0], password: "123456"))
ngos << ngo0

ngo1 = Ngo.create!(name: "Legião da Auto Estima", responsible: Faker::Name.name, mini_description: Forgery(:lorem_ipsum).words(20) , full_description: Forgery(:lorem_ipsum).words(140) , phone: Faker::PhoneNumber.phone_number, address: addresses[1], purpose: Ngo::PURPOSE.sample(), website: Faker::Internet.url, facebook:  "#{Faker::Name.first_name}_#{Faker::Name.last_name}", user: User.create(email: user_emails[1], password: "123456"))
ngos << ngo1

ngo2 = Ngo.create!(name: "Centro de Estudos e Pesquisas #{Faker::Name.name}", responsible: Faker::Name.name, mini_description: Forgery(:lorem_ipsum).words(20) , full_description: Forgery(:lorem_ipsum).words(140) , phone: Faker::PhoneNumber.phone_number, address: addresses[2], purpose: Ngo::PURPOSE.sample(), website: Faker::Internet.url, facebook:  "#{Faker::Name.first_name}_#{Faker::Name.last_name}", user: User.create(email: user_emails[2], password: "123456"))
ngos << ngo2

ngo3 = Ngo.create!(name: "Instituto Missionário #{Faker::Name.name}", responsible: Faker::Name.name, mini_description: Forgery(:lorem_ipsum).words(20) , full_description: Forgery(:lorem_ipsum).words(140) , phone: Faker::PhoneNumber.phone_number, address: addresses[3], purpose: Ngo::PURPOSE.sample(), website: Faker::Internet.url, facebook:  "#{Faker::Name.first_name}_#{Faker::Name.last_name}", user: User.create(email: user_emails[3], password: "123456"))
ngos << ngo3

ngo4 = Ngo.create!(name: "Fundação Banco #{Faker::Name.name}", responsible: Faker::Name.name, mini_description: Forgery(:lorem_ipsum).words(20) , full_description: Forgery(:lorem_ipsum).words(140) , phone: Faker::PhoneNumber.phone_number, address: addresses[4], purpose: Ngo::PURPOSE.sample(), website: Faker::Internet.url, facebook:  "#{Faker::Name.first_name}_#{Faker::Name.last_name}", user: User.create(email: user_emails[4], password: "123456"))
ngos << ngo4

ngo5 = Ngo.create!(name: "Cruz Verde", responsible: Faker::Name.name, mini_description: Forgery(:lorem_ipsum).words(20) , full_description: Forgery(:lorem_ipsum).words(140) , phone: Faker::PhoneNumber.phone_number, address: addresses[5], purpose: Ngo::PURPOSE.sample(), website: Faker::Internet.url, facebook:  "#{Faker::Name.first_name}_#{Faker::Name.last_name}", user: User.create(email: user_emails[5], password: "123456"))
ngos << ngo5

ngo6 = Ngo.create!(name: "Sociedade Hospital Aliado", responsible: Faker::Name.name, mini_description: Forgery(:lorem_ipsum).words(20) , full_description: Forgery(:lorem_ipsum).words(140) , phone: Faker::PhoneNumber.phone_number, address: addresses[6], purpose: Ngo::PURPOSE.sample(), website: Faker::Internet.url, facebook:  "#{Faker::Name.first_name}_#{Faker::Name.last_name}", user: User.create(email: user_emails[6], password: "123456"))
ngos << ngo6

ngo7 = Ngo.create!(name: "Fundação Padre #{Faker::Name.name}", responsible: Faker::Name.name, mini_description: Forgery(:lorem_ipsum).words(20) , full_description: Forgery(:lorem_ipsum).words(140) , phone: Faker::PhoneNumber.phone_number, address: addresses[7], purpose: Ngo::PURPOSE.sample(), website: Faker::Internet.url, facebook:  "#{Faker::Name.first_name}_#{Faker::Name.last_name}", user: User.create(email: user_emails[7], password: "123456"))
ngos << ngo7


# CREATE projects
# 2 projetos por ONG
Project.destroy_all
projects = []
projects << Project.create!(name: "Cantina da Vovó", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo0)
projects << Project.create!(name: "Doação de Sangue Coletiva", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: false, ngo: ngo0)

projects << Project.create!(name: "Uber da 3a Idade", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo1)
projects << Project.create!(name: "Colheita Coletiva", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo1)


projects << Project.create!(name: "Aulas de Economia Gratuitas", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo4)
projects << Project.create!(name: "Fiscalização de Receitas Médicas", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo4)

projects << Project.create!(name: "Arrecadação coletiva de bitcoins", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo5)
projects << Project.create!(name: "Visita à Orfanatos", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo5)

projects << Project.create!(name: "Aulas públicas de costura", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo6)
projects << Project.create!(name: "Manutenção de banheiros públicos", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo6)

projects << Project.create!(name: "Excursões ao Centro de SP", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo7)
projects << Project.create!(name: "Aulas de Grafite com João Doria", mini_description: Forgery(:lorem_ipsum).words(10), skills: Project::SKILLS.sample(), remote: true, ngo: ngo7)



# CREATE volunteers
volunteer0 = Volunteer.create!(first_name:"Joaquim" , last_name: "Oliveira" , user: User.create( email: "vol1@t.c" ,password: "123456"), address:"Rua Mourato Coelho, 100, Sao Paulo" , description:"Banana de Rojanas")
volunteer1 = Volunteer.create!(first_name:"Marco" , last_name: "Beduschi", user: User.create(email: "vol2@t.c" ,password: "123456"), address:"Rua Mourato Coelho, 1304, Sao Paulo" , description:"Banana de Bacanas")
volunteer2 = Volunteer.create!(first_name:"Rodrigo" , last_name: "Proença", user: User.create(email: "vol3@t.c" ,password: "123456"), address:"Rua Mourato Coelho, 2000, Sao Paulo" , description:"Banana de Pijamas")

# CREATE matches
# Joaquim está inscrito em todos os projetos
matches = []
projects.each do |project|
  matches << Match.create!(project: project, volunteer: volunteer0, status: "Aprovado!", description: Forgery(:lorem_ipsum).words(10))
end

puts "Seeds generated!"
