require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    arr = filename.split(" - ")
    song = Song.new(arr[1])
    artist = Artist.new(arr[0])
    song.artist = artist
    artist.add_song(song)
    song
  end

  def artist_name
    @artist.nil? ? nil : @artist.name
  end

end
