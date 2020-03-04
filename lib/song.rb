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
    song = Song.new(filename.split(" - ")[1])
    song.artist_name = filename.split(" - ")[0]
    song
  end

  def artist_name=(artist_name)
    Artist.all.each do |artist|
      return @artist = artist if artist.name == artist_name
    end
    @artist = Artist.new(artist_name)
  end
end
