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
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  

  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
end
