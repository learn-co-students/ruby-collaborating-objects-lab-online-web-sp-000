class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    split = filename.split(" - ")
    new_song = Song.new(split[1])
    new_song.artist = Artist.new(split[0])
    new_song
  end
end
