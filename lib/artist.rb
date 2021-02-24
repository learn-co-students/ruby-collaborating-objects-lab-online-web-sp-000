require_relative './song.rb'
require_relative './mp3_importer.rb'
require 'pry'

class Artist

    attr_accessor :name, :song
    
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
    #   expect(artist.songs).to eq([song_one, song_two])
    # this takes the object's self and sets it as the song's artist
    # it also adds the song to the Song class (which is why the test relies on code below)

    def songs
        Song.all.select do |s|
            s.artist == self
        end    
    end
    #iterates over all Song objects to find a Song object (s)'s artist equal to self

    def self.find_or_create_by_name(name)
        self.all.find {|a| a.name = name} || self.new(name)
    end

    def print_songs
        songs.map {|s| puts s.name}
    end
end