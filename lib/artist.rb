require 'pry'

class Artist

attr_accessor :name, :songs

@@all = []


def initialize(name)
  @name = name
  @songs = []
  save
end

def save
  @@all << self
end

def self.all
  return @@all
end

def add_song(song)
  song.artist = self
  # @songs << song
end

def songs
  @songs = Song.all.select {|song| song.artist == self}
  return @songs
end

def self.find_or_create_by_name(name)
  found = @@all.find {|artist|  artist.name == name}
  found ? found : Artist.new(name)
end

def print_songs
  songs
  @songs.each {|track|
    puts track.name
  }
end

end
