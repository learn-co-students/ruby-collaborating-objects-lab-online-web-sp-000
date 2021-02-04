require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #binding.pry
  end

  def artist=(name)
    @artist = name
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
       split_file = filename.split(" - ")
       #binding.pry
       song = self.new(split_file[1])
       artist = Artist.find_or_create_by_name(split_file[0])
       song.artist = artist
       artist.add_song(song)
       song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end

end
