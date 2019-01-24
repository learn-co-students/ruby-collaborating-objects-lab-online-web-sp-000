class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(name)
    self.artist.name = name
  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(name)
    song.name = song_info[1]
    song.artist = song_info[0]
    song
  end
end
