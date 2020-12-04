class Song 
  attr_accessor :name
  attr_reader :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist=(artist)
    # song.artist = artist
    @artist = artist
    artist.songs << self
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
  def self.new_by_filename(filename)
    artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end 
end 