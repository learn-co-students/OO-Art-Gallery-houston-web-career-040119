class Painting

  attr_accessor :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def self.total_price
    all.inject(0) {|sum,painting| sum + painting.price} 

  end


end
