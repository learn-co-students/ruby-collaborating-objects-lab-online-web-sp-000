require "pry"

class Artist 
  attr_accessor :name, :songs
   
   @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
 
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def self.all
  @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
 
    if new_artist = @@all.find { |a| a.name == name } 
    new_artist
    else
    return Artist.new(name)
    end
    
  end
   
  def print_songs
    @songs.collect do |song|
     puts song.name
    end
  end
end 
