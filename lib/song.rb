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
  
  def self.new_by_filename(file_name)
    # binding.pry
    split_file_name = file_name.split(" - ")
    song = self.new(split_file_name[1])
    artist = Artist.find_or_create_by_name(split_file_name[0])
    artist.add_song(song)
    song
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
  
end