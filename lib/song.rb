class Song
  attr_accessor :name, :artist, :songs

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_data = file_name.split(" - ")
    song_name = song_data[1]
    new_song = self.new(song_name)
    artist = new_song.artist
    new_song
  end


end
