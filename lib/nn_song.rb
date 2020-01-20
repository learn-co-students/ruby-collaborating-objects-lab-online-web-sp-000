# Nadav
class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = nil
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
  
  def self.new_by_filename(song_name)
    file = song_name.split(" - ")
    artist_name = file[0]
    song_name = file[1]
    new_song = Song.new(song_name)
    new_song.artist = Artist.new(artist_name)
    new_song
  end
  
  def artist_name=(artist)
    new_artist = Artist.find_or_create_by_name(artist)
    self.artist = new_artist
  end
  
end