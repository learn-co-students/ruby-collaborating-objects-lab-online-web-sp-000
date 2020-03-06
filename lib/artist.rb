require 'pry'
class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.create_by_name(name)
    Artist.new(name)
  end
  
  def self.find_by_name(name)
    self.all.find do |artist| 
      artist.name == name
    end
  end
  
  def self.find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)
  end
  
  def print_songs
    @songs.each do |song|
        puts song.name
    end
  end
end