class Artist
  attr_accessor :name
  @@all = []
  
  def initialize (name)
    @name = name
    self.save
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song (song)
    @songs << song
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def self.find_or_create_by_name (name)
    self.all.detect {|artist| artist.name == name} ? self.all.detect {|artist| artist.name == name} : self.new(name)
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
  
end
