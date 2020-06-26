require 'pry'


class Song

@@all = []


attr_accessor :name, :artist

def initialze(name)
  @name = name
  @artist = nil
  save
end

# def name=(name)
#   @name = name
# end

def artist=(artist)
  @artist = artist
end

def save
  @@all << self
end

def self.all
  return @@all
end







def self.new_by_filename(filename)
  parsed_filename = filename.split(" - ")
  artist = parsed_filename[0]
  song_name = parsed_filename[1]
  song = Song.new(song_name)
    # song = self.new(filename.split(" - ")[1])
  artist_name = artist
    @artist.add_song(this_song)
  end



  def artist_name=(name)
      self.artist=(Artist.find_or_create_by_name(name))
  end

end
