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
    info = filename.split(" - ")
    new_song = Song.new(info[1])
    new_song.artist = Artist.find_or_create_by_name(info[0])
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end
