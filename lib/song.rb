class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file_name)
    file_name = file_name.split(' - ')
    song = self.new(file_name[1])
    song.artist = Artist.new(file_name[0])
    song
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end
end