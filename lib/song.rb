class Song 

  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all = self
  end
  
  def self.all
    @all
  end

  
  # Class method
  def self.new_by_filename(filename)
    file_part = filename.chomp(".mp3").split(" - ")
    song = Song.new(file_part[1])
    song.artist_name = file_part[0]
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end