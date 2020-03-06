require 'pry'
class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  
  def self.find_or_create_by_name(name)
    selected_artist = nil
    @@all.each do |artist| 
      if artist.name == name
        selected_artist = artist
      else
        selected_artist = Artist.new(name)
      end
    end
    selected_artist
  end
  
  def print_songs
    @songs.each do |song|
        puts song.name
    end
  end
end