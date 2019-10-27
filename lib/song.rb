class Song 
  
  attr_accessor :name, :artist
  
  #class variable, where to put all of the songs
  @@all = []
  
  # instance method 
  def initialize(name)
    @name = name 
    save
  end
  
  def save
    @@all << self
  end
  
  # getter for class variable @@all
  # other parts of code can access it
  def self.all
    @@all
  end 
  
  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    name = filename.split(" - ")[1]
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist.name = name
    end
  end
  
end