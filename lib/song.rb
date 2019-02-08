require "pry"

class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_song = self.new(song_name)
    new_song.artist_name = artist_name
    new_song
    # binding.pry
    
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(name)
  end
  
  
  
end