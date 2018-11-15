class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #sample filename: 'Michael Jackson - Black or White - pop.mp3'
    split = filename.split(" - ")
    artist_name = split[0]
    artist = Artist.find_or_create_by_name(artist_name)
    song_name = split[1].chomp(".mp3")
    song = Song.new(song_name)
    song.artist = artist
    artist.add_song(song)
    song
  end

end
