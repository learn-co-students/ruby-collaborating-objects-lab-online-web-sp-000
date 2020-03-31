class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @song = []
    @@all << self
  end
  
  def self.all
    @@all.uniq
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find(name)
    @@all.find {|artist| artist.name == name}
  end
  
  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def print_songs
    self.songs.collect {|s| puts s.name}
  end
end