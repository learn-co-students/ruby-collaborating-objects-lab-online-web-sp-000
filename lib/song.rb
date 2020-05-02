require 'pry'

class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  
  def self.new_by_filename(file)
    parsed = file.split(/[-]/)
    song = parsed[1].strip
    artist = parsed[0].strip
    new_song = self.new(song)
    new_artist = Artist.new(artist)
    new_artist.add_song(new_song)
    new_song
  end
  
  
  def artist_name=(name)
    if Artist.all.find{|artist| artist.name == name}
      artist = Artist.all.find{|artist| artist.name == name}
      self.artist = artist 
    else 
      new_artist = Artist.new(name)
      self.artist = new_artist
    end
  end
  
end