require 'pry'
class Artist 
  attr_accessor :songs, :name
  @@all = []
  def initialize(name)
    self.name = name 
    @songs = []
    @@all << self
  end 
  
  def add_song(song)
    @songs << song
  end 
  
  def self.all
    @@all
  end 
   
  def songs
    @songs
  end 
  
  def self.find_or_create_by_name(name)
     self.all.find{|performer| performer.name == name} || Artist.new(name)
  end 
  
  def print_songs
    @songs.each {|song| puts song.name } 
  end 
end 