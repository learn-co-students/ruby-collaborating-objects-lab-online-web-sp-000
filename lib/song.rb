require 'pry'

class Song 
  attr_accessor :name, :artist 
   @@all = [] 
   
  def initialize(name)
    @name = name 
    save 
  end
  
   def save 
    @@all<<self
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename)
     song = self.new(name)
    song.name = filename.split(" - ")[1]
    song.artist 
  end 
  
  def artist_name=artist 
    if self.artist
    self.artist.name
  end 
  end 
end

