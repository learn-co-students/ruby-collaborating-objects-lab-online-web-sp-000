class Song 
  
  attr_accessor:name, :artist
  @@all = []
  @@songs = []
  
  def artist_name=(artist)
    new_artist = Artist.find_or_create_by_name(artist)
    self.artist = new_artist
  end
  
  def initialize(name)
    @name = name
    @@songs << self
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.all 
  @@all 
  end
  
  def self.new_by_filename(name)
    artist_name = name.split(" - ")[0]
    song_name = name.split(" - ")[1]
    new_artist = Artist.find_or_create_by_name(artist_name)
    new_song = Song.new(song_name)
    new_song.artist = new_artist
    new_song
  end
  
  
end