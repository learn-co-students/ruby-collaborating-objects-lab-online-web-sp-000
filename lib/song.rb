class Song
  attr_accessor :name, :artist, :MP3Importer
  
  def initialize(name)
    @name = name
    @artist = artist
  end

  def name=(a_name)
    @name = a_name
  end
  
  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    name = file_name.split(" - ")[0]
    song.artist = Artist.find_or_create_by_name(name)
    song.artist.songs << song
    song
  end
  
end