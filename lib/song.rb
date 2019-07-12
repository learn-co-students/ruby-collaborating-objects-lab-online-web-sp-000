class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist if artist != nil
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    file_array = file.split(" - ")
    name = file_array[1]
    artist = file_array[0]

    new_song = Song.new(name)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
