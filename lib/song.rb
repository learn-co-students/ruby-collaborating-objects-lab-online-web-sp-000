class Song 
  attr_accessor :name, :artist, :genre 
  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    save 
  end 
  
  def artist=(artist) 
    @artist = artist 
    artist.add_song(self) unless artist.songs.include?(self) 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end 
  
  def self.new_by_filename(filename) 
    song_artist, song_name, song_genre = filename.chomp(".mp3").split(" - ")
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(song_artist)
    song.genre = song_genre 
    song 
  end 

end 