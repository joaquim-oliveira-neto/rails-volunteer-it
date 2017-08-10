User.destroy_all

Ngo.destroy_all

ngo0 = Ngo.create!(name: "Galt Vestibulares", responsible: "Luciano", mini_description: "Ipsus Lorem, blablabla" , full_description: "Ipsus Lorem, blablabla. Ipsus Lorem, blablabla. Ipsus Lorem, blablabla." , phone: "36819237", address: "Rua Mourato Coelho, 100, Sao Paulo" , purpose: "Educação", website: "wwww.banana.com.br", facebook: "pedrowski.k", user: User.create(email: "ngo1@t.c", password: "123456"))
ngo1 = Ngo.create!(name: "Vovó Feliz", responsible: "Adriano" , mini_description: "Ipsus Lorem, blablabla" , full_description: "Ipsus Lorem, blablabla. Ipsus Lorem, blablabla. Ipsus Lorem, blablabla." , phone: "36819237", address: "Rua Mourato Coelho, 1304, Sao Paulo" , purpose: "Idosos", website: "wwww.banana.com.br", facebook: "nani.k", user: User.create(email: "ngo2@t.c", password: "123456"))
ngo2 = Ngo.create!(name: "APAE", responsible: "Manoel" , mini_description: "Ipsus Lorem, blablabla" , full_description: "Ipsus Lorem, blablabla. Ipsus Lorem, blablabla. Ipsus Lorem, blablabla." , phone: "36819237", address: "Rua Mourato Coelho, 2000, Sao Paulo" , purpose: "Idosos", website: "wwww.banana.com.br", facebook: "pedroski.k", user: User.create(email: "ngo3@t.c", password: "123456"))

Project.destroy_all

project0 = Project.create!(name: "Website Alunos", mini_description: "Ipsus Lorem, blablabla", skills: "Android", remote: true, ngo: ngo0)
project1 = Project.create!(name: "App da Vovó", mini_description: "Ipsus Lorem, blablabla", skills: "IOS", remote: false, ngo: ngo1)
project2 = Project.create!(name: "Design da Festa", mini_description: "Ipsus Lorem, blablabla", skills: "IOS", remote: true, ngo: ngo2)


Volunteer.destroy_all


volunteer0 = Volunteer.create!(first_name:"Joaquim" , last_name: "Oliveira" , user: User.create( email: "vol1@t.c" ,password: "123456"), address:"Rua Mourato Coelho, 100, Sao Paulo" , description:"Banana de Rojanas")
volunteer1 = Volunteer.create!(first_name:"Marco" , last_name: "Beduschi", user: User.create(email: "vol2@t.c" ,password: "123456"), address:"Rua Mourato Coelho, 1304, Sao Paulo" , description:"Banana de Bacanas")
volunteer2 = Volunteer.create!(first_name:"Rodrigo" , last_name: "Proença", user: User.create(email: "vol3@t.c" ,password: "123456"), address:"Rua Mourato Coelho, 2000, Sao Paulo" , description:"Banana de Pijamas")


Match.destroy_all

matches0 = Match.create!(project: project0, volunteer: volunteer0, status: "Ipsus Lorem", description: "asoasoda")
matches1 = Match.create!(project: project1, volunteer: volunteer1, status: "Ipsus Lorem", description: "jaosnfsoadn" )
matches2 = Match.create!(project: project2, volunteer: volunteer2, status: "Ipsus Lorem", description: "dnjofsjodfn")


