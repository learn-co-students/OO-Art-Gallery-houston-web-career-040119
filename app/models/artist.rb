require 'pry'

class Artist

  attr_reader :name, :years_experience
  @@all = []
  @@exp = 0
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    @@exp += years_experience

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
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    @@exp
  end

  def paint_exp_ratio
    paintings.count / @years_experience.to_f
  end

  def self.highest_ratio
    @@all.map {|artist| artist.paint_exp_ratio}.max
  end

  def self.most_prolific
    @@all.find {|artist| artist.paint_exp_ratio == Artist.highest_ratio}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end
