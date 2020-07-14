class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    split = filename.split(" - ")
    new_song = Song.new(split[1])
    artist = Artist.find_or_create_by_name(split[0])
    artist.add_song(new_song)
    new_song.artist = artist
    new_song
  end
end
