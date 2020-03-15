require "pry"

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
    self.artist.add_song(self)
  end
  
  def self.new_by_filename(filename)
    new_song = Song.new(filename.split(" - ")[1])
    new_song.artist_name = filename.split(" - ")[0]
    new_song
  end
      
#binding.pry

end



