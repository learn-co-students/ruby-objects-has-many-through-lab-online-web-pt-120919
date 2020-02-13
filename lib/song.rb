class Song 
  attr_accessor :name, :genre, :artist
  @@all = [] 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@all << self 
  end
  
  def self.all 
    @@all.each do |song|
      puts song.name
    end 
    @@all
  end
end