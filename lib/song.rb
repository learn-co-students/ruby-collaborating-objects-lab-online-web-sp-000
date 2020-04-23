class Song
  attr_accessor :name, :artist
  @@all
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = self.new(array[1])
    artist_name=(array[0])
    song
  end
  
  def artist_name=(name)
    if self.artist == nil
      self.artist = Artist.new(name)
      self.artist.name = name
    else
      self.artist.name = name
    end
  end
  
  
end