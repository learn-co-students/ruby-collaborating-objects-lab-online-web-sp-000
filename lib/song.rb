require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(" - ")
    new_song = self.new(filename_array[1])
    new_song.artist_name=(filename_array[0])
    new_song
  end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end
  
  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self) 
  end
  
  def save
    @@all << self
    self
  end
end