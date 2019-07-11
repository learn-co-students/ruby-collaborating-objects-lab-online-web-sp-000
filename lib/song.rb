class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @@all << self
#    Artist.add_song(self)
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end

  def self.new_by_filename(file)
    file_array = file.split(" - ")
    name = file_array[1]
    artist = file_array[0]
    Song.new(name, artist)
  end

end
