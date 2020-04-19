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

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    return_artist = @@all.detect{|artist| artist.name == name}
    if !return_artist
      return_artist = self.new(name)
    end
    return_artist
  end

  def print_songs
    my_songs = songs
    my_songs.each {|song| puts(song.name)}
  end
end
