class Song
  
  attr_accessor :artist, :name
  
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
    song = filename.split(" - ")
    new_instance = self.new(song[1])
    new_instance.artist_name=(song[0])
    new_instance
    
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    self.artist.add_song(self)
  end
  
end