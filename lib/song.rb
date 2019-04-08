class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    
  end
  
  def self.new_by_filename(filename)
    array = filename.split(" - ")
    array[2] = array[2].chomp(".mp3")
    new_song = self.new(array[1])
    artist = Artist.find_or_create_by_name(array[0])
    new_song.artist = artist
    artist.songs << new_song
    new_song
  end
end