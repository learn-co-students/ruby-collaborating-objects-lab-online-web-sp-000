class Song
  
  @@all = []
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
    Song.all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    data = filename.split(" - ")
    song = self.new(data[1])
    song.artist_name = data[0]
    song
  end
  
  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    new_artist.add_song(self)
  end
  
end