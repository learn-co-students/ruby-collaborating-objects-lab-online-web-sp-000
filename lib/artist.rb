require "pry"
class Artist
  attr_accessor :name, :songs, :all
  
  def initialize(name)
    @name = name
    @songs = []
    @@all = []
  end
  
  def name
    @name
  end
  
  def songs
    @songs 
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def save
    @@all << self
    @@all
  end
  
end