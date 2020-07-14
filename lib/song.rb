class Song
  attr_accessor :name, :artist
  def initialize (name)
    @name = name
  end
  def self.new_by_filename(file_name)
    parsed = file_name.split(" - ")
    new_song = self.new(parsed[1])
    new_song.artist_name = (parsed[0])
    return new_song
  end
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end
end
