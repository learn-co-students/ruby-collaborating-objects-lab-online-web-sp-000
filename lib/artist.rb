require 'pry'
class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    result = self.find(name)
    if result
      return result
    else
      self.create(name)
    end
  end

  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.create(name)
    self.new(name)
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end

end
