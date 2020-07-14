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
     find_artist= self.all.find {|artist| artist.name == name}
      if find_artist #returns true
        find_artist
    else
        Artist.new(name)
    end
  end

  def self.all
    @@all
  end

  def print_songs
   self.songs.each {|song| puts song.name} #the self at the beginning is derived from the Songs class via the song method so now we can iterate through it like any instance.
  end
end
