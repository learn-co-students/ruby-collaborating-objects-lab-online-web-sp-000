class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    name = filename.split(" - ")[1]
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    self.all << song
    song
  end

  def artist_name=(name)
    self.artist = Artist.all.detect{|artist| artist.name == name} ? Artist.all.detect{|artist| artist.name == name} : Artist.new(name)
  end

end
