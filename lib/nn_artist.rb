# Nadav

class Artist
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    # @songs = []
    @@all << self
  end
  
  def name=(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    # @songs << song
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
  
  def self.find_or_create_by_name(name)
    artist = Artist.all.select{|dude| dude.name == name}
    if artist == []
      return Artist.new(name)
    else
      return artist[0]
    end
  end
  
end