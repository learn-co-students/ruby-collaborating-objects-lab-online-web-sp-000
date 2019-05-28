class Song
  attr_accessor :name, :songs, :artist
  
  def initialize(name)
  @name = name
  end
  

  
  def self.new_by_filename(filename)
    song = Song.new(filename)
    song.name = filename.split(" - ")[1]
    song
  end
  
  def self.artist_name=(name)
    Artist.find_or_create_by_name(name)
  end

end