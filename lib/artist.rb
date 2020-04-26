require 'pry'
class Artist 

  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def add_song(song)
    song.artist = self
    # binding.pry
  end 
  
  def songs 
    Song.all.select{|x| x.artist == self}
    # binding.pry
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else 
      self.new(name)
    end
  end 
  
  def self.find_by_name(name)
    Artist.all.find{|x| x.name == name}
  end
  
  def self.all 
    @@all 
  end
  
  def print_songs
    self.songs.each{|x| puts x.name}
  end 
 

end 
