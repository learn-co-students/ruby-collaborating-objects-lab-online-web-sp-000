require 'pry'

class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    self.song
    # binding.pry
  end

  def songs
    Song.all.collect {|song| song.artist == self}
  end
end
