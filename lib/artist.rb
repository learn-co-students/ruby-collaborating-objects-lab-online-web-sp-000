require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
  s = Song.new(song_name)
  self.add_song(s)
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find_by_name || self.create_by_name
  end

  def self.find_by_name(name)
    self.all.detect  {|a| a.name == name}
  end

  def self.create_by_name(name)
    Artist.name(name)
  end

end
