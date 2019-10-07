require 'pry'
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

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.find_or_create_by_name(name)
    Artist.all.find {|a| a.name == name} || Artist.new(name)
    # OR
    # self.all.find {|a| a.name == name} || self.new(name)
    # This is a class method so self refers to the class (Artist)
  end

end
