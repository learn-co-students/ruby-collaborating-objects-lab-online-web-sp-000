require 'pry'

class Artist 
  attr_accessor :name 
  @@all = [ ]
  
  def initialize(name)
    @name = name 
    @songs = [ ]
    save
  end
  
  def add_song(song)
    @songs << song
  end 
  
  def self.find_or_create_by_name(name)
    if self.all.find{|x| x.name == name} == nil
      artist = self.new(name)
      artist
    else self.all.find{|x| x.name == name}
    end
  end

  def save 
    @@all << self 
  end 
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def print_songs
    @songs.each{|x| puts "#{x.name}"}
  end
  
  
end