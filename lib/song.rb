class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(file_name)
        artist, name, extension = file_name.split(" - ")
        song = Song.new(name)
        song.artist_name = artist
        song
    end

  def self.all
    @@all
  end

  def artist_name=(name)
    artist_name = Artist.find_or_create_by_name(name)
    self.artist = artist_name
  end

end
