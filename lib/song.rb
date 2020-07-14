require "pry"

class Song
  attr_accessor :name, :songs, :artist
  
  def initialize(name)
  @name = name
  end
  

  #class constructor
  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)   
    song
    
#    song = self.new(filename)
#    song.name = filename.split(" - ")[1]
#    song.artist = filename.split(" - ")[0]
#    song
  end
  
  def self.artist_name=(name)
    Artist.find_or_create_by_name(name)
  end

end