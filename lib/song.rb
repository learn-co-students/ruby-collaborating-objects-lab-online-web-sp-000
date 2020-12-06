require 'pry'

class Song
  attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    track_artist = filename.split(" - ")[0]
    track_title = filename.split(" - ")[1]
    self.new(track_title)
    new_song = self.all.find {|song_instance| song_instance.name == track_title}
    new_song.artist_name= track_artist
    artist = Artist.find_or_create_by_name(track_artist)
    artist.songs << new_song
    new_song
  end

  def artist_name=(artist_name)
    our_artist = Artist.find_or_create_by_name(artist_name)
    self.artist = our_artist
  end

end
