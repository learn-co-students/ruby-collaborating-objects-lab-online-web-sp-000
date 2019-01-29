require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist_name)

    if artist_name.class == String
      @artist = Artist.find_or_create_by_name(artist_name)
    else
      @artist = artist_name
    end

    @artist.add_song(self)

  end

  def self.new_by_filename(path)
    file_array = path.split(" - ")
    new_song = self.new(file_array[1])
    new_song.artist=(file_array[0])
    new_song
  end

end
