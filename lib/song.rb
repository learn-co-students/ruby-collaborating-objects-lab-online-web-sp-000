require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_by_filename(filename)
    artist_name, name = filename.split(/ [-] |[.]/)
    artist = Artist.find_or_create_by_name(artist_name)
    song = self.new(name)
    artist.add_song(song)
    song.artist = artist
    song
  end
  
end