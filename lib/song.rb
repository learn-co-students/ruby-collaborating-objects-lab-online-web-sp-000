class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end

  def self.new_by_filename(file_name)
    file_name_array = file_name.split("-")

    song = Song.new(file_name_array[1].strip)
    song.artist = Artist.new(file_name_array[0].strip)
    song

  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
