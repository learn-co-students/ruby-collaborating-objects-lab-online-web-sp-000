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

  def self.new_by_filename(filename)
    song = filename.split(' - ')[1]
    new_song = Song.new(song)
    new_song.artist_name = filename.split(' - ')[0]
    new_song
  end


  def artist_name=(artist)
    this_artist = Artist.find_or_create_by_name(artist)
    self.artist=this_artist
  end

end
