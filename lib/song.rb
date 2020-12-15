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
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end

  def self.new_by_filename(filename)
    artist, song_name = filename.split(" - ")
    song = Song.new(song_name)
    song.artist_name = artist
    song
  end
end
