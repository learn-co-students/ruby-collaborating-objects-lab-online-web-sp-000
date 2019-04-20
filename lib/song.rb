class Song
  attr_accessor :name, :artist
  def initialize(name)
    #initialize with #name accepts a name for the Song
    @name = name
  end
  def artist_name=(name) # this method collaborates the Artist
    #if (self.artist.nil?)
    #  self.artist = Artist.new(name)
    #else
    #  self.artist.name = name
    #end
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end

  def self.new_by_filename(file)
      #creates new instance of a song from the file that's passed
      #associates new song instance with the artist from the filenames
      artist_name = file.split(" - ")[0]
      song_name = file.split(" - ")[1]
      song = Song.new(song_name)
      song.artist_name = artist_name
      song
  end
end
