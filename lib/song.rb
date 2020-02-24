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
    data = filename.split(" - ")
    artist_name = data[0]
    song_name = data[1]

    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end

  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name).add_song(self)
  end
end
