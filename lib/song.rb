require 'pry'
class Song
  attr_accessor :name, :artist, :artist_name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]

    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.songs << song
    song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)

  end
end
