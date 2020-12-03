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
    song_name = filename.split(" - ")[1].strip
    artist = filename.split(" - ")[0].strip
    new_song = Song.new(song_name)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end





end
