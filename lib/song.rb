class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    info = file.split(" - ")
    name = info[1]

    song = Song.new(name)
    artist = Artist.new(info[0])
    song.artist = artist
    song
  end
end
