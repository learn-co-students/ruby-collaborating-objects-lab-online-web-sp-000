require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_file = filename.split(" - ")
    artist = split_file[0]
    title = split_file[1]
    genre = split_file[2].chomp(".mp3")

    song = Song.new(title)
    song.artist = Artist.find_or_create_by_name(artist)
    song.genre = genre
    song.artist.add_song(song)
    song
  end
end
