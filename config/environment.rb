require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

artist = Artist.new("Kevin", 10)
gallery1 = Gallery.new("Museum", "Houston")
painting = Painting.new("Tree", 100, artist, gallery1)

artist1 = Artist.new("Chris", 5)

painting1 = Painting.new("bunny", 1, artist1, gallery1)
painting2 = Painting.new("cat", 1, artist1, gallery1)
painting3 = Painting.new("dog", 19, artist1, gallery1)

artist2 = Artist.new("bob", 25)
p1 = Painting.new("cow", 13, artist2, gallery1)
p2 = Painting.new("raven", 15, artist2, gallery1)

binding.pry

0
