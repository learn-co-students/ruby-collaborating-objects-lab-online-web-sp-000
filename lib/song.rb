class Song 
  attr_accessor :name, :artist
  # attr_reader = :artist 
  @@all = []
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
  
  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    file = self.new(song)
    file.artist_name = artist
    file
    # binding.pry
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end 
  
end 





