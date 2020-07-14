require 'pry'
class Artist 
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name 
    save
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
    # binding.pry
  end 
  
  def add_song(song)
    song.artist = self 
    # binding.pry
  end 
  
  def self.find_or_create_by_name(artist_name)
    @@all.find {|artist| artist.name == artist_name} || Artist.new(artist_name)
  end 
  
  def print_songs
    songs.each {|song| puts song.name}
  end 
  
end 




