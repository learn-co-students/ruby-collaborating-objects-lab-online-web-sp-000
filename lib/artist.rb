require 'pry'
class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
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
        if self.all.length <= 0
            new_artist = self.new(name)
                new_artist
        else
            self.all.find do |instance| 
                if instance.name == name
                    instance
                else
                    new_artist = self.new(name)
                    new_artist
                end
            end
        end
    end

    def print_songs
        Song.all.select do |song|
            if song.artist == self
                puts song.name
            end
        end
    end

end