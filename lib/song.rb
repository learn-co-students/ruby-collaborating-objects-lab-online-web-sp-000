class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    song = Song.new(data[1])
    song.artist = Artist.find_or_create_by_name(data[0])
    song.artist.add_song(self)
    song
  end

end
