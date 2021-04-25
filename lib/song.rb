class Song 
  attr_accessor :artist, :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.new_by_filename(filename)
    artist_and_song = filename.split(" - ")
    #song = 
    self.new(artist_and_song[1])
    #song.artist = artist_and_song[0]
  end 
  
  def artist_name 
    
  end 
  
end 