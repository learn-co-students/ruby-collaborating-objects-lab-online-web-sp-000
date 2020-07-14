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

  def self.new_by_filename(file)
    rows = file.split("-")
    artist = rows[0].strip
    song = rows[1].strip
    new_song = Song.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    artist_object = Artist.find_or_create_by_name(name)
    self.artist = artist_object
  end

end
