class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    filename_info = filename.split(" - ")
    song = Song.new(filename_info[1])
    song.artist_name = filename_info[0]
    song.genre = filename_info[2].split(".")[0]
    return song
  end

  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name).add_song(self)
  end

end
