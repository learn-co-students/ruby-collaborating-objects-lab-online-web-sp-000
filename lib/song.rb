class Song
  attr_accessor :name
  attr_reader :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song = new(split_name[1])
    song.artist = Artist.find_or_create_by_name(split_name.first)
    song
  end
  
end