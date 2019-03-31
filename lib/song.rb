require 'pry'
class Song 
  attr_accessor :artist, :name, :genre
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    #filter_parameter_loggingbinding.pry
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)
    #binding.pry
  end
end