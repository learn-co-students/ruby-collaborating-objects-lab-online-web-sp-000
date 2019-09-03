class Song 
  attr_accessor :name
  attr_reader :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end 
  
  def self.new_by_filename(filename)
    name = filename.split("-")[1].strip
    self.new(name)
    artist = Artist.new(filename.split("-")[0].strip)
    @@all.last.artist = artist
    @@all.last
  end 
  
  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
  end   
  
  def self.all
    @@all
  end 
end 