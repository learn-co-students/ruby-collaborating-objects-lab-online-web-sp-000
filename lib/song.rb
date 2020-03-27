class Song
  attr_accessor :name, :artist, :artist_name
  @@all = []
  def initialize(name)
    @artists = []
    @name = name
    @@all << self

  end
  def self.all
    @@all
  end
  def self.new_by_filename(filename)
     files = filename.split(" - ")
     artist_name = files[0]
     song_name = files[1]
     song = Song.new(filename)
     artist = Artist.new(song)
     song.artist = artist
     song.artist.name = artist_name
     song.name = song_name
     song
  end
  def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)


  end

end
