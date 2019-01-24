class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(name)
    self.artist.name = name
  end


  def self.new_by_filename(file)
    artist, song = file.chomp(".mp3").split(" - ")
    song = self.new(song)
    song.name = song_info[1]
    song.artist_name = artist
    song
  end
end
