class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    components = filename.split(" - ")
    artist = components[0]
    name = components[1]
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(song)
    # binding.pry # => check artist name and their songs
    song
  end

end
