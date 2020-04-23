class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all = []
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
  
  
end