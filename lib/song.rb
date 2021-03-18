class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def self.new_by_filename(name)
    parsed_name = name.split(" - ")
    song = Song.new(parsed_name[1])
    song.artist = Artist.find_or_create_by_name(parsed_name[0])
    song
  end
  
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end
  
  def save
    @@all << self
  end
  
end
    
     
    
    