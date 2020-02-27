class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.new_by_filename(filename)
    song = Song.new(filename.split('-')[1].strip)
    song.artist = Artist.find_or_create_by_name(filename.split('-')[0].strip)
    song
  end
  
  def self.all 
    @@all 
  end
  
  def artist_name=(artist_name) 
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
  
end 