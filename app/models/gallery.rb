require 'pry'
require_relative "painting.rb"
require_relative "artist.rb"

class Gallery

  attr_reader :name, :city, :artist

  @@all = []

  def initialize(name, city, artist)
    @name = name
    @city = city
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def paitings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}
  end

  def artists_names
    artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    painting.max_by {|painting| painting.price}
  end










  # binding.pry
  # "I like turtles"
end
