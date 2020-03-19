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
      file = file_name.split(" - ")
      artist_from_file = file[0]
      name_from_file = file[1]
      #genre = file[2].chomp(".mp3")

      new_song = self.new(name_from_file)
      new_song.artist_name=(artist_from_file)
      new_song
  end

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist.add_song(self)
  end

end
