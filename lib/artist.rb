require 'pry'
class Artist 
  attr_accessor :name, :songs  
  @@all = []
  
  def initialize(name)
     @name = name 
     @songs = [] 
  end 
    
  def add_song(song)
      self.songs << song  
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find_or_create_by_name(name) 
      find = @@all.find {|artist| artist.name == name} 
        if find 
          return find 
        else 
          new_artist = self.new(name) 
          new_artist.save 
          new_artist
        end 
  end 
  
  def print_songs
    @songs.each do |song| 
      puts song.name 
    end 
  end 
  
end 