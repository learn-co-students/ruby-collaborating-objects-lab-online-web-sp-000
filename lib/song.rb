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
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    artist_piece = parts[0]
    song_name = parts[1].gsub(".mp3", "")
    new_song = self.new(song_name)
    new_song.artist_name = artist_piece
    new_song
  end

end
