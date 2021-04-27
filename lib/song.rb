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
  artist_name, name =  file_name.chomp.split(' - ')
  song = Song.new(name)
  song.artist_name = artist_name
  song
  end

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
  end

end
