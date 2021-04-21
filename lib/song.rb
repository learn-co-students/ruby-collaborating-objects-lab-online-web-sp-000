require 'pry'
class Song
    attr_accessor :name, :artist
    def initialize(name)
        @name = name
        @@all << self
    end
    @@all = []

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        artist = filename.split(" - ")[0]
        title = filename.split(" - ")[1]
        song = Song.new(title)
        song.artist_name = artist
        song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
    end
end