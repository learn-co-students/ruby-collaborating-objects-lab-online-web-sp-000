require "pry"

class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(name)
        if self.all.length > 0
            (self.all.select {|artist| artist.name == name})[0]
        else 
            self.new(name)
        end
    end

    def add_song(song)
        self.songs.push(song)
    end

    def print_songs
        self.songs.each do |song|
            puts song.name
        end
    end
    
end