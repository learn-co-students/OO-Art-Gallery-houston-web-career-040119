class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all 
    @@all 
  end

  def self.total_experience
    all.inject(0) {|sum,artist| sum+ artist.years_experience }
  end

  def self.most_prolific
    all.inject do |top_artist,artist| 
      top_artist_productivity= top_artist.paintings.length.to_f / top_artist.years_experience.to_f
       artist_productivity= artist.paintings.length.to_f / artist.years_experience.to_f
        if artist_productivity > top_artist_productivity
          artist
        else 
          top_artist
        end

    end
   end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    Gallery.all.select do |gallery|
      paintings.any? do |painting|
        painting.gallery == gallery 
      end
    end
  end

  def cities 
    galleries.map do |gallery|
      gallery.city 
    end.uniq
  end

  def create_painting(title,price,gallery)
    painting = Painting.new(title,price)
    painting.gallery = gallery
    painting.artist = self
  end

end
