require "pry"

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    arr = []
    Song.all.each {|song| arr << song if song.artist == self}
    arr
  end

  def self.find_or_create_by_name(name)
    @@all.each {|artist| return artist if artist.name == name}
    Artist.new(name)
  end

  def print_songs
    Song.all.each {|song| puts song.name if song.artist == self}
  end
end
