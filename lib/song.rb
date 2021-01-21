#create songs given each filename
#send the artist's name (string) to Artist class

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
    attributes = filename.split(" - ")
    name = attributes[1]
    song = self.new(name)
    song.artist_name = attributes[0]
    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
end
