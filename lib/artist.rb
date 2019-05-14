class Artist 
  attr_accessor :name, :song_name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @song_name = []
  end
  
  def self.all 
    @song_name
  end
    
  
  def add_song(song_name)
    @song_name << song_name
    
    
  end
  
  def songs 
    @song_name
  end

  def save.all
    @@all << self
  end
end