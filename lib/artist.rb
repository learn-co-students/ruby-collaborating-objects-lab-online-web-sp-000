require 'pry'

class Artist
  
  attr_accessor :name, :artist, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    # binding.pry
    song.artist = self 
  end
  
  def songs
    Song.all.select {|song| song.artist == self } 
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    self.all.find {|artist| artist.name == name} || self.new(name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end