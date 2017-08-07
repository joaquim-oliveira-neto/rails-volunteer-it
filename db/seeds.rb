Ngo.destroy_all

ngo0 = Ngo.create!(name: "Rodrigo", responsible: "Pedro" , mini_description: "Ipsus Lorem, blablabla" , full_description: "Ipsus Lorem, blablabla. Ipsus Lorem, blablabla. Ipsus Lorem, blablabla." , phone: "36819237", address: "Mourato Coelho, 200" , purpose: "education", website: "wwww.banana.com.br", facebook: "pedrowski.k", email: "gi.simaes@hotmail.com", password: "35423428")
ngo1 = Ngo.create!(name: "Pedro", responsible: "Rafa" , mini_description: "Ipsus Lorem, blablabla" , full_description: "Ipsus Lorem, blablabla. Ipsus Lorem, blablabla. Ipsus Lorem, blablabla." , phone: "36819237", address: "Mourato Coelho, 200" , purpose: "education", website: "wwww.banana.com.br", facebook: "nani.k", email: "gi.asfadas@hotmail.com", password: "34234528")
ngo2 = Ngo.create!(name: "Coelho", responsible: "Manoel" , mini_description: "Ipsus Lorem, blablabla" , full_description: "Ipsus Lorem, blablabla. Ipsus Lorem, blablabla. Ipsus Lorem, blablabla." , phone: "36819237", address: "Mourato Coelho, 200" , purpose: "education", website: "wwww.banana.com.br", facebook: "pedroski.k", email: "gi.adsdasd@hotmail.com", password: "3532428")

Project.destroy_all

project0 = Project.create!(name: "Condor", mini_description: "Ipsus Lorem, blablabla", purpose: "Health", skills: "programming", remote: true, ngo: ngo0)
project1 = Project.create!(name: "Bondor", mini_description: "Ipsus Lorem, blablabla", purpose: "Education", skills: "teaching", remote: false, ngo: ngo1)
project2 = Project.create!(name: "Tchondor", mini_description: "Ipsus Lorem, blablabla", purpose: "Mental Health", skills: "typing", remote: true, ngo: ngo2)

Volunteer.destroy_all

volunteer0 = Volunteer.create!(first_name:"Ropo" , last_name: "Aasdas", email: "eaef@gmail.com" ,password:"987" , address:"Mourato, 403" , description:"Banana de Rojanas")
volunteer1 = Volunteer.create!(first_name:"Ropo" , last_name: "Aasdas", email: "roro@gmail.com" ,password:"124" , address:"Mourato, 230" , description:"Banana de Bacanas")
volunteer2 = Volunteer.create!(first_name:"Roro" , last_name: "Baixa", email: "pedro@gmail.com" ,password:"123" , address:"Mourato, 200" , description:"Banana de Pijamas")

Match.destroy_all

matches0 = Match.create!(project: project0, volunteer: volunteer0, status: "Ipsus Lorem", description: "asoasoda")
matches1 = Match.create!(project: project1, volunteer: volunteer1, status: "Ipsus Lorem", description: "jaosnfsoadn" )
matches2 = Match.create!(project: project2, volunteer: volunteer2, status: "Ipsus Lorem", description: "dnjofsjodfn")
