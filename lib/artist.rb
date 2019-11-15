require 'pry'

class Artist 

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end 

  def self.all
    @@all 
  end 

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    
  end 

  def print_songs
  end 

end 