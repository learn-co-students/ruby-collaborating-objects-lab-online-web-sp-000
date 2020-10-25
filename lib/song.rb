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

  def self.new_by_filename(file_name)
    file_array = file_name.split(" - ")
    song = self.new(file_array[1])
    song.artist = Artist.find_or_create_by_name(file_array[0])
    song
  end

  def artist_name= (name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end
