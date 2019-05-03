class Song
  attr_accessor :name, :artist, :filename
  def initialize(song)
    @song = song
  end
  def self.new_by_filename(filename)
    song = Song.new
    song.name = filename.split(" - ")[1]
    artist_name = filename.split(' - ')[0]
    song.artist = Artist.new(artist_name)
    song
  end
end
