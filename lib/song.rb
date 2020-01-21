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
    x = filename.split(" - ")
    @name = x[1]
    @artist = x[0]
   
   song = Song.new(@name)
   song.artist_name=(@artist)
   return song
  end
  
  def artist_name=(artist)
    x = Artist.find_or_create_by_name(artist)
    x.add_song(self)
    return x
  end
  
end