class Song
  attr_accessor :artist, :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  def self.new_by_filename(file)
    file = file.chomp(".mp3").split(" - ")
    song = Song.new(file[1])
    song.artist_name = file[0]
    song
  end  
  def artist_name=(name)
      # binding.pry
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
