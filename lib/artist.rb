class Artist

    @@all = []
    attr_reader :name 

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self 
        end
    end

    def new_song(song_name, genre)
        Song.new(song_name, self, genre)
    end

    def genres
        @genres = []
        self.songs.each do |song|
            if !@genres.include? (song.genre)
                @genres << song.genre
            end
        end
        @genres
    end
end