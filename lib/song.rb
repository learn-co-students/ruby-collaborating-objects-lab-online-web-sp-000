class Song
  attr_accessor :artist, :name

@@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    splt_name = filename.split(" - ")
    song = self.new(splt_name[1])
    artist = Artist.find_or_create_by_name(splt_name[0])
    song.artist = artist 
    
    song 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.all 
    @@all 
  end 
  
end