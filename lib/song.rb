class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(filename)
    name_array = filename.split(" - ")
    song = self.new(name_array[1])
    artist_name = name_array[0]
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.save
    song.artist.add_song(song)
    song
  end
end
