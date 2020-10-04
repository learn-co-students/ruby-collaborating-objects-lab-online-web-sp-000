class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
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
    artist = self.all.detect{|a| a.name == name}
    artist.nil? ? Artist.new(name) : artist
  end
  
  def print_songs
    songs.each{|s| puts s.name}
  end
end
