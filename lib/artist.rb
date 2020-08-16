# responsible for either creating the artist or finding the instance of that artist

class Artist
    attr_accessor :name, :songs, :artist

    @@all = [] # store all Artist instances
    
    def initialize(name)
        @name = name
        @songs = []
        save
    end
       
    def save
        @@all << self
        self
    end

    def add_song(song)
        @songs << song 
    end

    def self.find_by_name(name)
        @@all.find do |artist| 
            artist.name == name
        end
    end

    def self.create_by_name(name)
        artist = self.new(name)
        artist
    end

    def self.find_or_create_by_name(name)
        if self.find_by_name(name) 
            self.find_by_name(name) 
        else
            self.create_by_name(name)
        end
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end

    def self.all
        @@all
    end
end


