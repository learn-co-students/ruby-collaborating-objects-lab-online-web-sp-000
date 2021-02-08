require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    save

  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist_name = artist_name
    song
  end

  def artist_name=(artist)
    artist = Artist.find_or_create_by_name(artist)
    self.artist = artist
    artist.add_song(self)
  end
end
