class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    
    @name = name
    @@all << self
    
  end
  
  def self.all
    
    @@all
    
  end
  
  def artist=(artist)
    
    @artist = artist
    
  end
  
  def artist_name=(artist_name)
    
    self.artist = Artist.find_or_create_by_name(artist_name)
    
  end
  
  def self.new_by_filename(file_name)
    
    file_arr = file_name.gsub(".mp3", "").split(" - ")
    puts file_arr[1], file_arr[0]
    
    song = self.new(file_arr[1])
    
    song.artist_name=(file_arr[0])
      
    song
    
  end
  
  
end