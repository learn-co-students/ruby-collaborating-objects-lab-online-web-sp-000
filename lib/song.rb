class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize
    @name = name
    @artist = artist
  end

  def save
   @@all << self
  end

  def self.all
    @@all
  end

  def new_by_filename(file)
  artist_name = file.split(" - ")[0]
  song_name = file.split(" - ")[1]
  song = Song.new(song_name)
  song.artist_name = artist_name
  song
  end

  def artist_name=
    artist = Artist.find_or_create_by_name
    self.artist = artist
    artist.add_song(self)
  end
end
