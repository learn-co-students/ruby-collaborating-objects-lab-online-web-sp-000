class Song
attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    #artist - song_name - genre.mp3
    #artist
    #song_name
    artist_name = filename.split(' - ')[0]
    song_name = filename.split(' - ')[1]
    #create or get artist
    artist = Artist.find_or_create_by_name(artist_name)
    #create song
    song = Song.new(song_name)
    #add song to Artist
    artist.add_song(song)
    #return new song
    song

  end

end
