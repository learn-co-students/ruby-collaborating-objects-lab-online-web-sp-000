
require 'pry'

class Artist 
  
  
  attr_accessor :name, :songs 
  
 @@all = []
  
def initialize(name)
  @name = name
  @@all << self 
 end
 
  def self.all 
    @@all 
  end 
  
 def add_song(song)
 song.artist = self 
end 
  
 def songs
  Song.all.select{|song| song.artist == self}
   end 
   
   def self.find_or_create_by_name(name)
    found_artist = self.all.find {|artist| artist.name == name}
    if found_artist
        found_artist
    else
        create = Artist.new(name)
    end
end
   


   def print_songs
 self.songs.each { |song| puts song.name }
  end 
  



  
end #class end 
