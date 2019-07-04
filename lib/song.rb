require "pry"
class Song 
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
 def artist_name(name)
    Artist.find_or_create_by_name(name)
  end
  
  def self.new_by_filename(file)
    array = file.split(" - ")
    new_song = self.new(array[1])
    new_song.artist_name(array[0])
   
  new_song
    
  end
    
  
end
