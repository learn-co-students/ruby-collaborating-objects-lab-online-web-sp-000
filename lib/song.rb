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
    parts = filename.split(" - ")
    artist = parts[0]
    song_name = parts[1].gsub(".mp3", "")
    
    song = self.new(song_name)
    song.artist_name = artist
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
end