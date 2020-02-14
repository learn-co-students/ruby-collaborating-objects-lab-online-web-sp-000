require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
        if artist.name == name
          return artist
        end
      end
      self.new(name)
    end

  def print_songs
    @songs.each{|song| puts song.name}
  end

end
