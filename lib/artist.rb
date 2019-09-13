require "pry"

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs

    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    if (self.name.nil?)
        self.name = Artist.new(name)
    else
        self.artist.name = name
        binding.pry
    end
  end

  def self.all
    @@all
  end

  def print_songs
    @all
  end
end
