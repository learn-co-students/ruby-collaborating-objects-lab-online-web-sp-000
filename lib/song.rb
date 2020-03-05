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

    def artist_name=(name)
          self.artist = Artist.find_or_create_by_name(name)
          
    end

    def self.new_by_filename(filename)
      artist_name = filename.split(" - ")[0]
      song_name = filename.split(" - ")[1]
      song = Song.new(song_name)
      song.artist_name = artist_name
      temp_artist = Artist.find_or_create_by_name(artist_name)
      temp_artist.add_song(song_name)
      song
    end

end