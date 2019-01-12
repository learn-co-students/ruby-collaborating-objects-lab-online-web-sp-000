require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find_by_name (name)
    all.find { |artist| artist.name == name }
  end
  
  def self.find_or_create_by_name(name)
     find_by_name(name) || new(name)
  end
    
  def print_songs
    puts @songs.collect { |song| song.name }
  end
end