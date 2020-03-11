class Song
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    artist.songs << self
  end

  def artist
    @artist
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    pieces = file_name.split(" - ")
    new_song = Song.new(pieces[1])
    artist = Artist.find_or_create_by_name(pieces[0])
    new_song.artist=artist
    new_song
  end

  def artist_name=(artist)
    @artist = Artist.find_or_create_by_name(artist)
  end
end
