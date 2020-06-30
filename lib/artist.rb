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
  
  def add_song(song)
    song.artist = self
    
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(x)
    if self.all.find do |person| 
      person.name  == x
      return person       #requires the return keyword here. Inside the if block?
      end
    else   
       new_artist=self.new(x)
       new_artist
      end
  
  end
  
  def print_songs
    songs.each do |y|
      puts "#{y.name}"
    end
  end
end