require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_song(name)
    @@all.detect { |artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_song(name)
    else
      Artist.new(name)
    end
  end

  def print_songs
    @songs.each { |song| puts "#{song.name}"}
  end

end
