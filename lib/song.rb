class Song
 attr_accessor :name, :artist
def initialize(name)
  @name=name
end

def self.new_by_filename(filename)
  info_array=filename.split(/(.*) - (.*) - (.*)\.mp3/)
  song=Song.new(info_array[2])
  song.artist=Artist.find_or_create_by_name(info_array[1])
  song.artist.songs<<self
  song
end
end
