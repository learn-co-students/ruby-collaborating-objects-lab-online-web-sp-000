require 'pry'

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
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    
  end
  
  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song_name = array[1]
    string = array[0]
    new_instance = Song.new(song_name)
    new_instance.artist_name = (string)
    new_instance
  end 
  
end