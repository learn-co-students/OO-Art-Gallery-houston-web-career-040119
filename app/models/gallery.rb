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
    Artist.all.select do |artist | 
      artist.paintings.any? {|painting| painting.gallery== self}
    end
  end

  def artist_names
     artists.map {|artist| artist.name}.uniq
  end

  def most_expensive_painting
    paintings.inject do |top_painting,painting|
      if painting.price > top_painting.price 
        painting 
      else
        top_painting 
      end
    end
  end

end
