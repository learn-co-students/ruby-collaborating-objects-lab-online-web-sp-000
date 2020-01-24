class Song 
  
  attr_accessor :name, :artist
  
  @@all =[] 
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def save 
    @@all << self
  end 
    
  
  def self.all 
    @@all
  end 
  
  
  def self.new_by_filename(name)
    song_name = name.split(" - ")[1]
    artist = name.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
  
end 