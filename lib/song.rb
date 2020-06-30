require 'pry'

class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
   # @artist = artist
    @@all << self
  end
  
  def self.all
   @@all
  end
  
  def self.new_by_filename(filename)
    song=self.new(filename.split(" - ")[1]) #song name "Black or White" object!
    artist_name = filename.split(" - ")[0]  
    song.artist = Artist.new(artist_name) #artist string "michael Jackson"string!
    song
  end
  
  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name).add_song(self)
  end
end