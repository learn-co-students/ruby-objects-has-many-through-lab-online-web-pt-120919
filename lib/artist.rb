class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select{|song| song.artist == self}
  end
  
  def genres 
    genres = []
    self.songs.each do |song|
      genres << song.genre 
    end
    genres
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song
  end
    
  def self.all 
    @@all.each do |artist|
      puts artist.name
    end
  end
end