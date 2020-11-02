require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name =name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.new_by_filename(filename)
    song_array = filename.split(" - ")
    #binding.pry
    song = Song.new(song_array[1])
    song.artist = Artist.find_or_create_by_name(song_array[0])
    song
  end
  def artist_name=(name)
    artist_obj = Artist.find_or_create_by_name(name)
    self.artist = artist_obj
  end
end
