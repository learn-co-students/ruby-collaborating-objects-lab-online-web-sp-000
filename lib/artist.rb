class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    self.name = name
    self.songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    found = self.all.find {|artist| artist.name == name}
    found ? found : Artist.new(name)
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
  
end