require "pry"
class Artist
  
  @@all = []
  
  attr_accessor :name, :songs, :all
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  def self.find_or_create_by_name(name)
    result = self.all.find {|artist| artist.name == name}
      if result == nil 
        Artist.new(name)
      else
        result
      end
  end
  

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
end