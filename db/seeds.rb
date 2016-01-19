
user = User.new
user.name = 'User1'
user.email = 'user1@raul.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.save!

user = User.new
user.name = 'User2'
user.email = 'user2@raul.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.save!

user = User.new
user.name = 'User3'
user.email = 'user3@raul.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.save!


pet = Pet.new(name:"Rodolfo",species:"Serpiente",age:14,user_id:1)
pet.image = File.open("#{Rails.root}/public/dog.jpg")
pet.save!

pet = Pet.new(name:"Tapa",species:"Camaleon",age:3,user_id:2)
pet.image = File.open("#{Rails.root}/public/dog.jpg")
pet.save!

pet = Pet.new(name:"Chusa",species:"Perro",age:9,user_id:1)
pet.image = File.open("#{Rails.root}/public/dog.jpg")
pet.save!

pet = Pet.new(name:"Jenny",species:"Gato",age:4,user_id:2)
pet.image = File.open("#{Rails.root}/public/dog.jpg")
pet.save!

pet = Pet.new(name:"Lali",species:"Pez",age:1,user_id:1)
pet.image = File.open("#{Rails.root}/public/dog.jpg")
pet.save!

pet = Pet.new(name:"Toby",species:"Perro",age:11,user_id:2)
pet.image = File.open("#{Rails.root}/public/dog.jpg")
pet.save!

pet = Pet.new(name:"Lory",species:"Gato",age:2,user_id:3)
pet.image = File.open("#{Rails.root}/public/dog.jpg")
pet.save!

pet = Pet.new(name:"Grupy",species:"Gato",age:3,user_id:3)
pet.image = File.open("#{Rails.root}/public/dog.jpg")
pet.save!
