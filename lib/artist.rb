class Artist
         
    attr_accessor :name, :songs
    @@all = []

    def initialize (name)
        @name = name
        @songs = []
    end

    def add_song (song)
        @songs << song
        song.artist = self 
    end    

    def songs 
        @songs
    end

    def self.all
        @@all
    end

    def save
     @@all<<self
    end

    def self.find_or_create_by_name(name)
        @@all.each do |artist|
          if artist.name == name
            return artist
          end
        end
        artist = self.new(name)
        self.all << artist
        artist
    end

    def print_songs
        self.songs.each { |song| puts song.name }
    end
end