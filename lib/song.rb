require 'pry'

class Song
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    info = filename.split(" - ")
    song = self.new(info[1])
    song.artist = Artist.find_or_create_by_name(info[0])
    song.artist.add_song(song)
    song
  end
  
  def artist=(artist)
    @artist = artist
  end
  
end