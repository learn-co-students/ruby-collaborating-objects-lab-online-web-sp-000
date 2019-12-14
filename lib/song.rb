class Song 
  attr_accessor :name, :artist 
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    self.save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  # def self.new_by_filename(filename) 
  #   song = self.new 
  #   song.artist = fiename.split(" - ")[1]
  #   song 
  # end 

end 