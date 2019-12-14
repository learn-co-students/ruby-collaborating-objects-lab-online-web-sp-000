class Artist 
  attr_accessor :name, :songs  
  
  @@all = [] 
  
  
  def initialize(name)
    @name = name
    self.save 
    @songs = [] 
  end
  
  def save 
    @@all << self
  end 
  
  def add_song(song)
    self.songs << song 
    song.artist = self 
  end
  
  def self.all 
    @@all 
  end
  
  
end 