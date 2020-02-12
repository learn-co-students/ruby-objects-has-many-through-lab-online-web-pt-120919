class Genre

    @@all = []

    def self.all
        @@all
    end

    attr_reader :name 

    def initialize(name)
        @name = name
        @@all << self 
    end

    def songs
        Song.all.select do |song|
            song.genre == self 
        end
    end

    def artists
        @artists = []
        self.songs.each do |song|
            if !@artists.include? (song.artist)
                @artists << song.artist
            end
        end
        @artists
    end
end