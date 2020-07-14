class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.create(name)
    s = self.new name
    s.save
    s
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    @@all.find { |artist| artist.name==name } or Artist.create name
  end
  
  def print_songs
    @songs.each { |i| puts i.name }
  end
end