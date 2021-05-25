require 'pry'
class Song
    #create songs given each filename and sending the artist name to Artist
    #relies on Artist
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
        new_song = Song.new(song_name)
        new_song.artist = Artist.new(artist_name)
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

end