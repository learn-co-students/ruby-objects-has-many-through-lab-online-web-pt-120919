class Genre 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  @@all = []
  
  def songs 
    Song.all.select{|song| song.genre == self}
  end
  
  def artists 
    artists = []
    self.songs.each do |song|
      artists << song.artist 
    end
    artists
  end
  
  def self.all 
    @@all.each do |genre|
      puts genre.name 
    end 
  end 
end