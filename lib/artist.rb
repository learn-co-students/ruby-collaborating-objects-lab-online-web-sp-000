require "pry"

class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song_name)
    @songs << song_name
  end
  
  def songs
    @songs
  end
  
  def self.all
    @@all
  end
  
  def save
      if !@@all.include?(self)
      @@all << self
      end
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    artist
  end
  
  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end
  
  def self.find_or_create_by_name(name)
    j = self.find(name) || self.create(name)
    # binding.pry
  end
  
  def print_songs
    @songs.each {|i| puts i.name}
  end
  
  
  
  
end