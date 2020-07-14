class Song
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
     end
  
  def self.all
    @@all
  end

  def save
     @@all << self
  end
  
  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    new_song = self.new(name)
    new_song.artist_name = artist
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end