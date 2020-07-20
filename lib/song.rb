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
    data = filename.split(/ - |.mp3/)
    artist = data[0]
    name = data[1]
    genre = data[2]
    
    song = Song.new(name)
    song.artist = Artist.new(artist)
    song
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end
end