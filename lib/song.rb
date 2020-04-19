require 'pry'

class Song
  attr_accessor :name, :artist

  def artist_name=(artist_name)
    @artist_name = Artist.find_or_create_by_name(artist_name)
    @artist = @artist_name
  end

  def artist_name
    @artist_name
  end

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
    parsed_filename = filename.split(" - ")
    new_song = self.new(parsed_filename[1])
    new_song.artist_name = parsed_filename[0]
    new_song.artist.add_song(new_song)
    new_song
  end

end
