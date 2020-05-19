#require 'pry'
class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.find_or_create_by_name(name)
        #binding.pry
        artist = @@all.find {|artist| artist.name == name} #setting artist equal to either nil or an instance of the artist
        if artist == nil 
            Artist.new(name)
        else
            artist
        end
    end
    

    def print_songs
        songs.each do |song| 
        puts song.name
        end   
    end
end