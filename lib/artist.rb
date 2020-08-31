class Artist
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    Artist.all << self
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
  
  def self.find_or_create_by_name(name)
    new_artist = self.all.find {|artist| artist.name == name}
    new_artist = self.new(name) if new_artist.nil?
    new_artist
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
  
end