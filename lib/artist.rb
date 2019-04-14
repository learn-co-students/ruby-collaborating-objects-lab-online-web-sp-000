require 'pry'

class Artist
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.add_song(song)
    @songs << song
  end 
  
  def add_song(song)
    @songs << song
    # song.artist = self
  end 
    
  def songs 
    @songs
  end
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all
  end
  
  def self.create_by_name(name)
    new_artist = Artist.new(name)
    @@all << new_artist 
    new_artist
    # @@all << self 
    # @@all << self 
    # name.save
    # new_artist.save
    
   
  end 
    
  def self.find_by_name(name)
    @@all.find do |artist|
     artist.name == name
    end  
  end
    
  def self.find_or_create_by_name(name)
    if Artist.find_by_name(name)
    else
      Artist.create_by_name(name)
    end 
  end

  def print_songs
    
    @songs.each do |song_object|
      puts song_object.name
    end 
  end 
    
end  ## end of Artist class    
####################################################################33    

=begin

=end
 
############################################################################   



