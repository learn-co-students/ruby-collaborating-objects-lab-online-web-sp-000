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
  
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist = Artist.new(filename.split(" - ")[0])
    song
  end
  
  def artist_name=(name)
    if Artist.find_or_create_by_name(name) != nil 
      self.artist.name = name 
    else  
      self.artist = Artist.new(name)
  end
end
end
    
  #   if (self.artist.nil?)
  #     self.artist = Artist.new(name)
  #   else 
  #     self.artist.name = name
  #   end
  # end