require "pry"
class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def artist_name(name)
  new_artist = Artist.find_or_create_by_name(name)
  new_artist.add_song(self)
  new_artist.save
  
  end
  
  def self.new_by_filename(file)
    array = file.split(" - ")
    new_song = self.new(array[1])
    new_song.artist_name(array[0])
    new_song
  end
  
 
   
end
