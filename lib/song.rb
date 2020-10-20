class Song

  attr_accessor :artist, :name, :artist_name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = Song.new(array[1])
    song.artist = Artist.find_or_create_by_name(array[0])
    song
  end


  def artist_name=(name)
    instance = Artist.find_or_create_by_name(name)
    self.artist = instance
    self.artist.name = instance.name
  end

end
