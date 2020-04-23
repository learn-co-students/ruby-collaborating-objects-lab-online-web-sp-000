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
    array = filename.split(" - ")
    song = self.new(array[1])
    song.artist_name=(array[0])
    song
  end
  
  def artist_name=(artist_name)
    if (self.artist.nil?)
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = artist_name
    end
  end
  
end