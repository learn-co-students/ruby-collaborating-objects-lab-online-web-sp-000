require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
 def self.new_by_filename(file_name)
 # binding.pry 
   if file_name 
    new_file = file_name.split(" - ")
    artist_name = new_file[0]
    song_name = new_file[1]
    song = Song.new(song_name) 
    song.artist_name=(artist_name)
    song 
   end   
 end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end 
  
end 