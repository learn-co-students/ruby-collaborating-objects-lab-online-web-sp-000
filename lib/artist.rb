require 'pry'

class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @songs = []
    save 
  end 
  
  def add_song(song)
    song.artist = self 
    @songs << song
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.find_or_create_by_name(new_artist)
    existing_artist = @@all.find {|artist| artist.name == new_artist}
    if existing_artist == nil
      Artist.new(new_artist)
    else
      existing_artist 
    end 
  end    
  
  def print_songs
    @songs.each {|song| puts song.name}
  end 
  
end 