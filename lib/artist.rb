#require 'pry'

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
  
  def add_song(song)
    song.artist = self
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
#   song 
  
  def self.find_or_create_by_name(artist)
    self.find(artist) || self.create_by_name
    artist.name 
  end 

      # artist_1 = Artist.find_or_create_by_name("Michael Jackson")
      # artist_2 = Artist.find_or_create_by_name("Michael Jackson")

  def self.find(artist)
    self.all.each do |artist| 
      artist == artist.name 
  end 

  def create_by_name(artist)  
  end 

  def print_songs
    songs = self.all.artist.each do |song|
    puts artist.songs 
  end
end 
  
  def new_by_filename(filename)
    song = self.new 
    song.title = filename.split
  end 
end 

def save
  @@all << self 
end
end 
