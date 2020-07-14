require 'pry'
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = filename.split(" - ")
    new_song = Song.new(song[1])
    if self.artist(song[0])
      new_song.artist = self.artist(song[0])
    else
      new_song.artist = Artist.new(song[0])
      new_song.artist.save
    end
    new_song.artist.songs << new_song
    new_song
  end

  def self.artist(artist_name)
    Artist.all.detect {|artist| artist.name == artist_name}
  end
end
