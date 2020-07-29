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
  Song.all.select{|song| song.artist == self}
end

def self.find_or_create_by_name(name)
    searched_name = self.all.detect{|artist| artist.name == name}
    if searched_name == nil
    name = Artist.new(name)
  else
    searched_name
  end
end

def print_songs
  self.songs.each{|s|puts s.name}
end

end
