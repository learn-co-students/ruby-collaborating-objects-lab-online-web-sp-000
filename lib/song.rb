class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @all
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split( " - ")[0]
    song.artist = filename.split(" - ") [1].chomp
    song
  end

  def artist_name
    artist = Artist.new(song.artist)
  end

end
