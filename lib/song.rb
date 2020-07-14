class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.sub(".mp3", "").split(" - ")
    new_song = Song.new(data[1])
    self.attach_song_to_artist(new_song, data[0])
    new_song.genre = data[2]
    new_song
  end

  def self.attach_song_to_artist(song, artist)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(song)
  end
end
