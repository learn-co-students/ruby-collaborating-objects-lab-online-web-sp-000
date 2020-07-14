class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file_name)
    name = file_name.split("-")[1].strip
    artist_name = file_name.split("-")[0].strip
    song = self.new(name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    artist.add_song(song)
    song
  end
end