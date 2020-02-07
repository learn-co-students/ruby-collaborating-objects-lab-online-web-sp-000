require "pry"

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

  def self.new_by_filename(song_details)
    song_details_parsed = song_details.split(" - ")
    song = Song.new(song_details_parsed[1])
    song.artist = Artist.new(song_details_parsed[0])
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end


end
