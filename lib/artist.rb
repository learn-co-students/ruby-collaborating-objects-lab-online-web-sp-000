class Artist

  attr_accessor :name, :song

@@song_count = 0

  @@all = []


def initialize(name)
  @name = name
  @songs = []
  save
end

def add_song(song)
  @songs << song
  song.artist = self
  song
  @@song_count +=1
end

def self.all
  @@all
end

def self.create(name)
  artist = self.new(name)
  artist.name = name
  artist
end

def songs
  @songs
end

def self.find(name)
  self.all.detect { |artist| artist.name == name}
end

def save
  @@all << self
end

def self.song_count
  @@song_count
end

def self.find_or_create_by_name(name)
  self.find(name) || self.create(name)
end

def print_songs
  self.songs.each {|song| puts song.name}
end

def add_song_by_name(name)
  song = Song.new(name)
  sef.songs << song
  song.artist = self
  @@song_count +=1
end


end
