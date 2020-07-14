class Song

  attr_accessor :title, :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def artist_name=(name)
  artist = Artist.find_or_create_by_name(name)
  self.artist = artist
end

  def self.new_by_filename(filename)
    title = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song = self.new(title)
    song.artist_name = artist
    song

  end

end
