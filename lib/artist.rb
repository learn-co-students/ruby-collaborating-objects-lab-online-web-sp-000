require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    existing_artist = self.all.find {|artist| artist.name == name}
    if existing_artist
      existing_artist
    else
      name = Artist.new(name)
      name
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
