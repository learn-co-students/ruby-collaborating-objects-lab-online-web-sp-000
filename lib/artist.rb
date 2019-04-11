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
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def find_or_create_by_name(name) 
      @@all.find {|name| artist.name == name} 
      if name != artist.name  
       self.artist.name = name 
    end 
  end 
end 