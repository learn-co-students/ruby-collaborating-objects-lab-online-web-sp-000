class Artist
  attr_accessor :name
  
  def initialize(name)
    @@all = []
    @songs = []
    @name = name
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.find {|i|  i.name == name}
    
    artist = Artist.new(name) if !artist
  end
  
  def print_songs
    @songs.each { |i| puts i.name }
  end
end