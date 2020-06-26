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
   Song.new(song)
end

def songs
  @songs = Song.all.select {|song| song.artist == self.name}
  return @songs
end

def self.find_or_create_by_name(name)
  found = @@all.find {|artist|  artist.name == name}
  found ? found : Artist.new(name)
end

def print_songs
  self.songs.each {|song|
    puts song.name
  }
end

end
