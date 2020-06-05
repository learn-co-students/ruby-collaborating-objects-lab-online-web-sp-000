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
    Song.all.select { |s| s.artist == self } 
  end 
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    artist = Artist.all.find {|a| a.name == name}
    if artist != nil 
      artist 
    else 
      Artist.new(name)
    end
  end 
  
  def print_songs
    songs.each { |s| puts s.name}
  end
end 