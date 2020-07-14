require 'pry'

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def self.find(name)
        @@all.find { |artist| artist.name == name }
    end

    def self.create(name)
        artist = self.new(name)
        @@all << artist
        artist
    end

    def self.find_or_create_by_name(name)
        if self.find(name)
            self.find(name)
        else
            self.create(name)
        end
    end

    def print_songs
        self.songs.each { |song| puts song.name }
    end

    def save
        @@all << self
    end

 end