require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.artist.add_song(new_song)
    new_song
  end
end
