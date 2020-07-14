class Song
  attr_accessor :name, :artist, :filename
  def initialize(song)
    @name = song
  end
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song = Song.new(song_name)
    artist_name = filename.split(' - ')[0]
    song.artist = Artist.new(artist_name)
    song.artist.save
    song.artist.add_song(song)
    song
  end
end
