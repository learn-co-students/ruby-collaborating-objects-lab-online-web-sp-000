require 'pry'

class Artist
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find(name)
    self.all.find {|a| a.name == name}
  end
 
  def self.find_or_create_by_name(name) ## There has to be a better way
    if self.find(name)
      self.find(name)
    else
      self.new(name)
    end
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end
end
