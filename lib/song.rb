class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name) # accepts a name for the song and makes it accessible through an attribute accessor
    @name = name # sets the song name
    @@all << self
  end

  def self.all #returns all existing Song instances
    @@all
  end
  
  def self.new_by_filename(file_name) #creates a new instance of a song from the file that's passed
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist #associates new song instance with the artist from the filename
    new_song
  end

  def artist_name=(name) #accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end