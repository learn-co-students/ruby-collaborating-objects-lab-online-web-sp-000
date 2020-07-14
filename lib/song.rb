class Song
  
  attr_accessor :artist, :name, :artist_name, :title
  
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
  
  
  def artist_name
    self.artist.name if self.artist
  end
  
  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    end
  
def self.new_by_filename(filename)
  song = Song.new(filename.split(" - ")[1])
  song.artist_name=(filename.split(" - ")[0])
  song
end
end

