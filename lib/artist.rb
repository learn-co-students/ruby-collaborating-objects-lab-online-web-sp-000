class Artist

require 'pry'

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    @@all.detect {|artist| artist.name == name} || artist = Artist.new(name)
  end

  def print_songs
    puts @songs.collect {|song|song.name}
  end


end
