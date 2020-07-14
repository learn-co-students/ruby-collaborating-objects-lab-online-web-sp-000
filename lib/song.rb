class Song
  attr_accessor :artist, :name

  def initialize(name)  #initialize with #name accepts a name for the song
    @name = name
  end

  def artist_name=(name)  #name= sets the song name
    self.artist = Artist.find_or_create_by_name(name)  #artist= sets the artist object to belong to the song
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
end