require 'pry'
class Song
  attr_accessor :name, :artist
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def name=(name)
    @name = name
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    song_artist = file.split(" - ")[0]
    song_artist = Artist.find_or_create_by_name(song_artist)
    song = self.new(song_name)
    song.artist = song_artist
    song
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    self.artist.add_song(self)
  end
end