require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name = nil)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song 
  end 
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self) 
  end 
  
  
end