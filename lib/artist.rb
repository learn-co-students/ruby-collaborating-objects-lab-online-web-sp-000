require 'pry'
class Artist
  attr_accessor :name
  
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
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    self.all.find {|song_name| song_name == name}
    #takes in name
    #find artist instance that has that name
    #if doesn't exist yet, create ope
    #return instance of artist with name attribute filled out
  end
 
  def print_songs
    
  end
end