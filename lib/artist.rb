require 'pry'
class Artist
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []

  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    Song.all.select {|e| e.artist == self }
  end

  def self.find_or_create_by_name(name)

    Artist.all.each do |e|

      if e.name == name
      return  e
    end
  end
        Artist.new(name)


  end

  def print_songs
    self.songs.each do |e|
      puts e.name
    end
  end
end
