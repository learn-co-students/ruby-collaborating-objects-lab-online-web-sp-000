class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name(name)
    Artist.find_or_create_by_name(name)
  end
  
  def self.new_by_filename(file)
    song_info = file.split(" - ")
    song = Song.new(song_info[1])
    song.artist = song.artist_name(song_info[0])
    song.artist.add_song(song)
    return song
  end
end