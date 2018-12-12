class Song 
  attr_accessor :name, :artist 
  
  
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file)
    song = Song.new(file.split("-")[1].strip)
    song.artist = Artist.new(file.split("-")[0].strip)
    song.artist.songs << song 
    song
  end
    
  
  
end