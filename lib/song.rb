require 'pry'

class Song 
  attr_accessor :name, :artist
 
  
  def initialize(name, artist = nil)
    @name = name
  end 
    
  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    song.artist = artist
    artist.add_song(song)
    song
    
   
  end
  
 def self(artist)
   @artist = artist
 end


  def self.artist=(name)
    Artist.find_or_create_by_name(name)
  end

    
    
end 