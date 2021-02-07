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
  end 
end 

  def create_by_name(artist)  
    self.all.each do |artist| 
    name == artist.name 
  end
end 

  def print_songs
    songs = self.all.artist.each do |song|
    artist.songs 
  end
end 
  
  def new_by_filename(filename)
    song = self.new 
    song.title = filename.split
  end 
end 