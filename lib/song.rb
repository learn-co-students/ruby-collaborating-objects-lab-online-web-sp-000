class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    song = Song.new(song_info[1])
    artist = Artist.new(song_info[0])
    artist.add_song(song)
    artist.save
    song.artist = artist
    song
  end
  
end