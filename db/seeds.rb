# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "obliterating prayers....."
Prayer.destroy_all
Comment.destroy_all
God.destroy_all

puts "creating gods"
gods = ["Zeus", "Hera", "Poseidon", "Demeter", "Ares", "Athena", "Apollo", "Artemis", "Hephaestus", "Aphrodite", "Hermes", "Dionysus", "Hades"]
puts "creating gods"
gods.each do |god|
  God.create!(name: god)
end
puts 'finished'

puts "adding god pictures"

file = URI.open('https://i.pinimg.com/originals/99/dc/0c/99dc0c941e66da117cbc8b46c4000def.jpg')
god = God.find_by(name: 'Zeus')
god.photo.attach(io: file, filename: 'zeus.jpg', content_type: 'image/jpg')
god.save!

file = URI.open('https://c1.staticflickr.com/5/4024/4505742191_df27afe13a_b.jpg')
god = God.find_by(name: 'Hera')
god.photo.attach(io: file, filename: 'hera.jpg', content_type: 'image/jpg')

file = URI.open('https://jestergoblin.com/wp-content/uploads/2012/05/2012-05-09_19-46-09_518-473x600.jpg')
god = God.find_by(name: 'Poseidon')
god.photo.attach(io: file, filename: 'poseidon.jpg', content_type: 'image/jpg')

file = URI.open('https://live.staticflickr.com/7288/8732185451_f32c2f6aec_b.jpg')
god = God.find_by(name: 'Demeter')
god.photo.attach(io: file, filename: 'demeter.jpg', content_type: 'image/jpg')

file = URI.open('https://i.pinimg.com/474x/9b/70/19/9b7019cdfa3fbbb4a2da8bba15499aed--lego-figures-verse.jpg')
god = God.find_by(name: 'Ares')
god.photo.attach(io: file, filename: 'ares.jpg', content_type: 'image/jpg')

file = URI.open('https://static.artfire.com/uploads/mfs/items/7f/0d/large/7f0d2a0926c4953911688135559a20c6ff7aece2443bc1abad960d156efa643f.jpg')
god = God.find_by(name: 'Athena')
god.photo.attach(io: file, filename: 'athena.jpg', content_type: 'image/jpg')

file = URI.open('https://live.staticflickr.com/4056/4505744943_628aeb7e3d_b.jpg')
god = God.find_by(name: 'Apollo')
god.photo.attach(io: file, filename: 'apollo.jpg', content_type: 'image/jpg')

file = URI.open('https://live.staticflickr.com/39/103708600_a124f3f0ee_z.jpg')
god = God.find_by(name: 'Artemis')
god.photo.attach(io: file, filename: 'artemis.jpg', content_type: 'image/jpg')

file = URI.open('https://www.toys-shop.gr/101848-full_default/history-greek-gods-hephaestus.jpg')
god = God.find_by(name: 'Hephaestus')
god.photo.attach(io: file, filename: 'ahephaestus.jpg', content_type: 'image/jpg')

file = URI.open('https://blog.firestartoys.com/wp-content/uploads/2019/05/MF077_1.jpg')
god = God.find_by(name: 'Aphrodite')
god.photo.attach(io: file, filename: 'aphrodite.jpg', content_type: 'image/jpg')

file = URI.open('https://live.staticflickr.com/3704/9661354037_4dfe67858d_b.jpg')
god = God.find_by(name: 'Hermes')
god.photo.attach(io: file, filename: 'hermes.jpg', content_type: 'image/jpg')

file = URI.open('https://i.pinimg.com/736x/4d/17/b4/4d17b401d8e5964cd3353ba956c8c489.jpg')
god = God.find_by(name: 'Dionysus')
god.photo.attach(io: file, filename: 'dionysus.jpg', content_type: 'image/jpg')

file = URI.open('https://live.staticflickr.com/65535/48788229068_8034a25757_b.jpg')
god = God.find_by(name: 'Hades')
god.photo.attach(io: file, filename: 'hades.jpg', content_type: 'image/jpg')

puts "the gods are happy"
