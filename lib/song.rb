class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    return nil if @artist.nil?
    @artist.name
  end
  
  def self.new_by_filename(file_name)
    artist, song, genre = file_name.split(" - ")
    genre=genre.split(".mp3")[0]
    new = Song.new(song)
    new.genre = genre
    new.artist_name = artist
    new
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

end