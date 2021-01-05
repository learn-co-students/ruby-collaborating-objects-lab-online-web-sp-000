require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = [ ]

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
    found = Artist.all.detect {|artist| artist.name == name}
    if found
      found
    else
      new_artist = Artist.new(name)
      new_artist
    end
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
