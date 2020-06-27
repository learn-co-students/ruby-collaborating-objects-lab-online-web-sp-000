require 'pry'


class Song

@@all = []


attr_accessor :name, :artist

def initialize(name)
  @name = name
  @artist = nil
  save
end

def save
  @@all << self
end
# def name=(name)
#   @name = name
# end

def artist=(artist)
  @artist = artist
end


def self.all
  return @@all
end

def self.new_by_filename(filename)
  parsed_filename = filename.split(" - ")
  new_song = Song.new(parsed_filename[1])
  new_song.artist_name = parsed_filename[0]
  return new_song

    # song = self.new(filename.split(" - ")[1])

    # @artist.add_song(this_song)
  end



  def artist_name=(name)
      self.artist = (Artist.find_or_create_by_name(name))
      self.artist.add_song(self)
  end

end
