require 'pry'
class Artist
  attr_accessor :name
 
  @songs=[]
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self if !@@all.include?(name)
  end
 
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end
 
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    # binding.pry
    Song.all.count
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(a)
    if self.all.detect { |artist| artist.name == a }
      self.all.detect { |artist| artist.name == a }
    else
      self.new(a)
    end
  end
  
  def print_songs
    self.songs.each {|a| puts a.name}
  end

end
