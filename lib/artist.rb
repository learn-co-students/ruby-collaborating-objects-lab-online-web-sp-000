class Artist

    attr_accessor :name, :artist
    @@songs = []
    @@all = []

    def initialize(name)
        @name = name
    end
    
    def songs
        @@songs
    end
    
    def add_song(song)
        @@songs << song
        song.artist = self
    end
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        if self.artist == nil
            self.artist = Artist.new(name)
        else
            self.artist.name = name
        end
    end

    def print_songs
        @@songs.each do |mysong|
           puts mysong.name
        end
    end

end
