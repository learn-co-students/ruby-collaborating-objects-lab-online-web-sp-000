require 'pry'
class Artist 
  attr_accessor :name
  
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @songs = [] 
    save
  end 

  def save 
    @@all << self
  end 

  def self.all 
    @@all 
  end 
 
  def add_song(song)
    @songs << song
    song.artist = self  
  
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 

  def self.find_or_create_by_name(name)
    
    self.find(name) || self.create(name)  
    
  end 

   
   
    def self.find(name) 
      @@all.detect {|artist| artist.name == name}
    
    end 
  
    def self.create(name)
      artist = Artist.new(name)
      
    end 
   
 
  def print_songs 
 
    @songs.each do |s|
      puts s.name 
    end 
  
  end 
  
  
  
end 

