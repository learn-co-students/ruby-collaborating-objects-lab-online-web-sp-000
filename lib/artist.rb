require 'pry'

class Artist 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all 
    @@all 
  end
  
  def save 
    @@all << self 
  end
  
  def add_song(song)
    new_song = Song.new(song)
    @@all << new_song 
    new_song.artist = self 
  end
  
  
end