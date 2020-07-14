class Song
  
  attr_accessor :name, :artist
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
  
  def self.artist
    @artist
  end
  
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist = Artist.new(filename.split(" - ")[0])
    song
  end
 
  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    self.artist = new_artist
  end
end