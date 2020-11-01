require 'pry'

class Song
  attr_accessor  :name, :artist

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
    new_song = self.new(song_name)
    new_song.artist_name = (artist_name)
    new_song
  end

  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name).add_song(self)
  end
end
