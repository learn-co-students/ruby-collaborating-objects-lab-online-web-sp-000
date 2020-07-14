require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def artist_name=(artist_name)
    artist_obj = Artist.find_or_create_by_name(artist_name)
    self.artist = artist_obj
    #binding.pry 
    artist_obj.add_song(self)
  end 
  
  def self.new_by_filename(filename)
      items = filename.split(" - ")
      the_artist = items[0]
      song = items[1]
      new_song = self.new(song)
      new_song.artist_name = the_artist
      new_song
  end 
  
end 
