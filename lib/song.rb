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
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end
  
end