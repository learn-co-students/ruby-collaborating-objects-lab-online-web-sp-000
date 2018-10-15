class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    # binding.pry
    added_song = self.new(song)
    added_song.artist_name = artist
    added_song
  end
  
  # Creating writer method
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    # self = #<Song: ..... @artist=#<Artist: ..... @name="Michael Jackson", @songs=[]>, @name="Black or White">
    # binding.pry
    artist.add_song(self)
  end
end
