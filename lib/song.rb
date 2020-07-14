require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    data = /(?<artist>.+)\s-\s(?<song>.+)\s-\s(?<genre>.+).mp3/.match(filename)
    song = Song.new(data[:song])
    song.artist = Artist.find_or_create_by_name(data[:artist])
    song.genre = data[:genre]
    song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

end
