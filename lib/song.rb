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
    artist_name = filename.split(" - ")[0]
    title = filename.split(" - ")[1]
    song = self.new(title) 
    song.artist_name = artist_name
    song
  end
  
  def artist_name=(name)
    the_artist = Artist.find_or_create_by_name(name)
    @artist = the_artist
    the_artist.add_song(self)
  end
end
