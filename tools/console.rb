require_relative '../config/environment.rb'

artist1 = Artist.new("Bob", 30)
artist2 = Artist.new("Joe", 2)
artist3 = Artist.new("Jill", 10)

gallery1 = Gallery.new("Houston_Art", "Houston", artist1)
gallery2 = Gallery.new("Flatiron_Art", "New York", artist2)

painting1 = Painting.new("Perfect", 300, artist1, gallery1)
painting2 = Painting.new("Paint2", 100, artist2, gallery1)
painting3 = Painting.new("Paint3", 500, artist3, gallery2)




binding.pry

puts "Bob Ross rules."
