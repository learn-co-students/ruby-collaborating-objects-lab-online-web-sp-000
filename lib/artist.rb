class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    @songs << song
  end 
  
  def self.find_or_create_by_name(name)
    self.all.find {|artist| artist.name == name} || self.new(name)
  end 
  
  def print_songs 
    @songs.each {|song| puts song.name}
  end 
end 