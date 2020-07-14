class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.save
    artist.add_song(name)
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    string = filename.split(" - ")
    song.name = string[1]
    song.artist_name = string[0]
    song
  end

end
