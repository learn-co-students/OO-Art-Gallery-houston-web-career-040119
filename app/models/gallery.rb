class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def highest_price
    self.paintings.map {|painting| painting.price}.max
  end

  def most_expensive_painting
    self.paintings.find {|painting| painting.price == self.highest_price}
  end
end
