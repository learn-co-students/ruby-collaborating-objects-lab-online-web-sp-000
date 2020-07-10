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
    song = self.new(filename.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song
  end

  def artist_name=(artist_name1)
    self.artist = Artist.find_or_create_by_name(artist_name1)

  end
end
