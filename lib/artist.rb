require 'pry'
class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    song.artist = self
    self.songs << song  
    song
  end
  
  def save 
    self.class.all << self
    self
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
  
  def self.find_or_create_by_name(name)
    self.all.any?{|artist| artist.name = name} ? self.all.detect{|artist| artist.name = name} : self.new(name).save
  end
  
  def self.all
    @@all
  end
end