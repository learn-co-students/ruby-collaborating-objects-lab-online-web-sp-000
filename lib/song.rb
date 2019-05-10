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

  def artist_name(name)
    artist = self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_file = file.split(" - ")
    song_name = song_file[1]
    singer = song_file[0]
    song = self.new(song_name)
    song_artist = Artist.find_or_create_by_name(singer)
    song.artist = song_artist 
    song_artist.save
    song_artist.add_song(song)
    song
  end
  
end