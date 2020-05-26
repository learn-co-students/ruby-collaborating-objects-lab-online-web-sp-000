require "pry"

class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name, artist=nil)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        parsed_name = filename.split(" - ")
        artist_name = parsed_name[0]
        song_name = parsed_name[1]
        new_song = self.new(song_name)
        new_song.artist_name = artist_name
        new_song
    end

    def artist_name=(artist_name)
        artist_instance = Artist.find_or_create_by_name(artist_name)
        artist_instance.add_song(self)
        self.artist = artist_instance
    end

end