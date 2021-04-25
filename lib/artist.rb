class Artist 
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs  
    Song.all.select {|song| song.artist == self}
  end 
  
  def find_or_create_by_name(name)
    #takes in a name and either finds the arttist instance or creates a new one, return will be an artist instance with a name attribute
    
  end 
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end 
  
end 