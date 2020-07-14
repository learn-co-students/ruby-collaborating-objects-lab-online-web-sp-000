require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
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
      new_artist = self.find_song(name)
    else
      new_artist = Artist.new(name)
    end
    new_artist
  end

  def print_songs
    @songs.each { |song| puts "#{song.name}"}
  end

end
