class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_by_filename(path)
    data = path.split(" - ")
    song = Song.new(data[1])
    song.artist = Artist.find_or_create_by_name(data[0])
    song.artist.add_song(self)
    song.genre = data[2].chomp(".mp3")
    song
  end
  
  def self.all
    @@all
  end
end