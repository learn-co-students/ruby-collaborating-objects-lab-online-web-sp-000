class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select{|s| s.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect{|a| a.name == name} || self.new(name)
  end
  
  def print_songs
    songs.each{|s| puts s.name}
  end
end
