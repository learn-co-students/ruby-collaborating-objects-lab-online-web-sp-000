require 'pry'

class Song

    attr_accessor :name, :artist, :genre
    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        # song = self.new(file)
        split_file = file.split(" - ")
        song = Song.new(split_file[1])
        song.artist = Artist.new(split_file[0])
        song.genre = split_file[3]
        song.artist.songs << song
        song
        # binding.pry
    end

    def artist_name=(name)
           self.artist = Artist.find_or_create_by_name(name)
           artist.add_song(self)
    end

end