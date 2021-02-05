class Artist 
  attr_accessor :name, :artist 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    save 
  end 
  
   def save 
    @@all <<self 
  end 
  
  def self.find_or_create_by_name
  end 

  def self.find 
  end 

  def self.create_by_name 
  end 

  def self.print_songs 
    @@all 
  end 
  
  def self.new_by_filename(filename)
    song = self.new 
    song.title = filename.split

  def add_song(song) 
    song.artist = self
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
end 
  