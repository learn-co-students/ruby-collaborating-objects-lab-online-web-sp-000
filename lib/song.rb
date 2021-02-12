class Song 
  attr_accessor :name, :artist  
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(name)
    @name  = name 
    @@all << self 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(name)
    song = name.split(" - ")[1]
    artist = name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song 
    
    
  end 
end 