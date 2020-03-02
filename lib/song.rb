class Song
  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(" - ")
    artist = Artist.find_or_create_by_name(filename_array[0])
    song = Song.new(filename_array[1])
    artist.add_song(song)
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end

end
