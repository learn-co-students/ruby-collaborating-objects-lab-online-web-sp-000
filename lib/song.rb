require "pry"
class Song
  
attr_accessor :name, :artist, :song
  
def initialize(name)
  @name = name
end

def artist_name=(artist)
  Artist.find_or_create_by_name(artist)
  Artist.add_song
end
  

def self.new_by_filename(filename)
    split_filename = []
    split_filename = filename.split(" - ")
    song = Song.new(split_filename[1])
    song.artist_name=(split_filename[0])
    song
  end

end