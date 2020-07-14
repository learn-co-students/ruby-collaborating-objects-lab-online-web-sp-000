require 'pry'
class Song

  attr_accessor  :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
       @artist = Artist.find_or_create_by_name(name)
       @artist.add_song(self)
     end

  def self.new_by_filename(x)
    song = self.new(x.split(" - ")[1])
    song.artist_name=(x.split(" - ")[0])
    song
  end
end
