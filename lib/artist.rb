require 'pry'
class Artist 
  attr_accessor :name, :songs   
  @@all = []
  
  def initialize(name)
     @name = name 
     @songs = [] 
  end 
    
  def add_song(song)
      self.songs << song  
  end 
end 