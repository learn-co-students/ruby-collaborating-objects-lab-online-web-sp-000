require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    #song.artist = self
    @songs << song
  end

  def add_song_by_name(song)
    newsong = Song.new(song)
    add_song(newsong)
  end

  def self.find_or_create_by_name(name)
    collection = @@all.select{|n| n.name == name}
    if collection.size == 0
      newartist = Artist.new(name)
      @@all << newartist
      return newartist
    end
  end

  def print_songs
    @songs.each do |n|
      puts n.name
    end
  end

  def self.song_count
    #binding.pry
    Song.all.size
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
