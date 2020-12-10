require 'pry'

class Song

 attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self    
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song_name = filename.split(" - ")[1]
        artist_name = filename.split(" - ")[0]
        song = Song.new(song_name)
        artist = Artist.find_or_create_by_name(artist_name)
        song.artist = artist
        artist.add_song(song_name)
        song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
    end

end