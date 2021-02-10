class Song 
  attr_accessor :name, :artist 
   @@all = [] 
   
  def initialize(name)
    @name = name 
    save 
  end
  
   def save 
    @@all <<self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name 
    if self.artist
    self.artist.name
  end 
  end 
  
  def self.new_by_filename(filename) 
    song = self.new 
    song.title = filename.split(" - ")[1]
    song.artist 
  end 
end

