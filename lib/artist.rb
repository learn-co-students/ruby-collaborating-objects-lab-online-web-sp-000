require 'pry'
class Artist

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|x| x if x.name} || self.create(name)
  end

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each {|x| puts "#{x.name}"}
  end

  def songs
    @songs
  end

end
