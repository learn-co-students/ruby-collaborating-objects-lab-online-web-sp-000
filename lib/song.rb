
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name_split = file_name.split(" - ")
    song = self.new(name_split[1])
    song.artist = Artist.new(name_split[0])
    song.artist.add_song(song)
    song.artist.save
    song
  end

end
