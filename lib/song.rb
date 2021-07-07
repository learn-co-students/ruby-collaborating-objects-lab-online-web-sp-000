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
  
  def self.new_by_filename(filename)
    file = filename.split(" - ")
    artist = Artist.find_or_create_by_name(file[0])
    song = Song.new(file[1])
    song.artist = artist
    song
  end
  
  def artist_name= (name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end
end