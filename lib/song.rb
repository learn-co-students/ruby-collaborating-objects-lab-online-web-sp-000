class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    
  end 
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist 
    artist.add_song(self)
  end
  
  def self.new_by_filename(some_filename)
    array = some_filename.split(" - ")
    song = self.new(array[1])
    artist_name = array[0]
    song.artist_name = artist_name
    song
  end 
  
end 