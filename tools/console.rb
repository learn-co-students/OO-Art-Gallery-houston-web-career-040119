require_relative '../config/environment.rb'

artist1 = Artist.new("Bob Ross", 20)
artist2 = Artist.new("Rembrandt", 30)
artist3 = Artist.new("Leonardo da Vinci", 31)

gallery = Gallery.new("Louvre", "Paris")
gallery2 = Gallery.new("Met", "NYC")

artist1.create_painting("Flower",128,gallery)
artist1.create_painting("Dove",326,gallery2)

artist2.create_painting("Sunset", 332, gallery)
artist2.create_painting("Sunrise", 128, gallery2)
artist2.create_painting("Tranquility", 345, gallery)
artist2.create_painting("Moon",100,gallery2)

artist3.create_painting("Blue", 100, gallery)
artist3.create_painting("Tree", 30, gallery2)
artist3.create_painting("Music", 40, gallery)


binding.pry

puts "Bob Ross rules."
