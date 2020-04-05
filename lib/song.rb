require 'pry'
class Song
  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name, genre = "")
    self.name = name
    self.genre = genre
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    temp_artist = nil
    Artist.all.each do |artist|
      if artist.name == name
        temp_artist = artist
      end
    end
    temp_artist = Artist.new(name) if temp_artist == nil
    self.artist = temp_artist
  end

  def self.new_by_filename(file)
    song = nil
    artistName = file.split(" - ")[0]
    songName = file.split(" - ")[1].split(".mp3")[0]
    song = Song.new(songName)
    song.artist_name = artistName
    song
  end
end
