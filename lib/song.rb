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

  def artist=(name)
    self.artist.name = name
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split("-")[1]
    song
  end
end
