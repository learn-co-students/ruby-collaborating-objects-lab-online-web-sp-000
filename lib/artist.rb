class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def add_song(song)
    @songs << song  
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.index { |artist| artist.name == name }
    artist == nil ? Artist.new(name) : @@all[artist]
  end
  
  def self.all
    @@all
  end
  
end