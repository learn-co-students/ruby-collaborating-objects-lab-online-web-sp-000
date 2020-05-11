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

  def self.new_by_filename(filename)
    song_data = []
    song_data = filename.split(" - ")
    song = self.new(song_data[1])
    song.artist_name = song_data[0]
    song
  end

  # involves Artist class:
  #1. turn Artist's name as a string into an Artist object
    #a. Create the Artist instance or see if it already exists
    #b. send an Artits's name (a string - from parsed filename) so use Artist.find_or_create_by_name
  #2. assign the song to the artist (use Artist.add_song(song) method)
    def artist_name=(artist) #belongs to an artist
          self.artist = Artist.find_or_create_by_name(name)
          self.artist.add_song(song)
    end

end
