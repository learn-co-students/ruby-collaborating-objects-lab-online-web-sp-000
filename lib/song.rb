require 'pry'

class Song 
  attr_accessor :name, :artist 
   @@all = [] 
   
  def initialize(name)
    @name = name 
    save 
  end
  
   def save 
    @@all <<self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename)
     song = self.new(name)
    song.name = filename.split(" - ")[1]
     binding.pry 
    song.artist 
  end 
  
  def artist_name=artist 
    if self.artist
    #am I really creating a new one?
    self.artist.name
  end 
  end 
end

