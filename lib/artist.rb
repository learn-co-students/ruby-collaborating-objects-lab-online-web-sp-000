require 'pry'

class Artist 
  attr_accessor :name, :artist 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    save 
  end 
  
   def save 
    @@all <<self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
  def find_or_create_by_name(artist)
    self.find || self.create_by_name
    artist.name 
  end 

      # artist_1 = Artist.find_or_create_by_name("Michael Jackson")
      # artist_2 = Artist.find_or_create_by_name("Michael Jackson")

  def find_by_name
    self.all.each do |artist| 
      artist.name 
  end 

  def create_by_name  
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

  def add_song(song_one) 
  binding.pry 
    song.artist = self
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
end 
end 
  