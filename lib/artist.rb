require 'pry'

class Artist 
  attr_accessor :name, :artist 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def self.all 
    @@all 
  end 
  
  
def save
  @@all << self
end
  
  def add_song(song)
    song.artist = self
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(artist)
    self.find(artist) ? self.find(artist) : self.new(artist) 
    end 

  def self.find(artist)
    self.all.find do |something| 
      artist == something.name 
#       pry(Artist)> self => Artist
# [2] pry(Artist)> something => #<Artist:0x00000000021a7668 @name="Michael Jackson">
# [3] pry(Artist)> artist => "Michael Jackson"
  end 
end 

  def print_songs
    self.songs.find do|something|
    puts something.name
  end 
end 
end 