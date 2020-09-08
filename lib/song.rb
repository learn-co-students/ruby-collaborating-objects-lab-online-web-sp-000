class Song 
  
  attr_accessor :name, :artist
  
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist
    @@all << song
    song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
 
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
    
end