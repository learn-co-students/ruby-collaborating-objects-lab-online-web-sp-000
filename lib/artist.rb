require 'pry'

class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def name=(name)
        @name = name
    end
    def self.all
        @@all
    end
    def add_song(song)
        song.artist = self
        
        #binding.pry
    end
    def songs
        #binding.pry
        Song.all.select {|song| 
            if song.artist == nil
            else
                song.artist == self
            end
        }
    end
    def self.find_or_create_by_name(name)
        
        if @@all.find {|artist| artist.name == name}
            @@all.find {|artist| artist.name == name}
        else
            newArtist = Artist.new(name)
            newArtist
        end
    end
    def print_songs
        binding.pry
        puts Song.all.select {|song| 
            if song.artist == nil
            else
                song.artist == self
            end
        }
    end
end