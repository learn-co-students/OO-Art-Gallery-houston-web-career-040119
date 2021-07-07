require 'pry'
require_relative "painting.rb"
require_relative "gallery.rb"

class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end
 
  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    #binding.pry
    # Gallery.all.select {|gallery| gallery.city == self}
    # myGalleries = Gallery.all.select {|gallery|  gallery.artist.name == self.name}
    # myGalleries.each {|gallery| puts gallery.city}
    galleries.map {|gallery| gallery.city}
  end

  
  def self.total_experience
   self.all.reduce(0) {|sum, artist| sum + artist.years_experience}
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.length / artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end






  # binding.pry
  # "I like turtles"
end


# binding.pry
# 0
# "I like turtles"