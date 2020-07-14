class Song

  attr_accessor :name, :artist # Set our attributes of name and artist. The artist attribute sets the artist object to belong to the song.

  @@all = [] # We create another class variable to contain our song information.

  def initialize(name) # This method performs the same job as our method in 'Artist'
    @name = name
    @@all << self
  end

  def self.all # Same with our '.all'
    @@all
  end

  def self.new_by_filename(filename) # We create a method that creates a new instance of a song and associates it with an artist.
    song_name = filename.split(" - ") # Firt, we take our filename and puts each element in an array, using the '-' as a break point.
    song = self.new(song_name[1]) # We set our song var equal to the 2nd element in the array: our song name.
    artist = Artist.find_or_create_by_name(song_name[0]) # We set our artist var equal to the first element of the array: the artist's name.
    song.artist = artist # We set the value of 'song.artist'to equal the artist's name.
    artist.add_song(song) # We also associate the song with the artist by taking 'artist.add_song' and adding the song name as the argument.
    song # We finally end by returning our song object.
  end

  def artist_name=(name) # Finally, this method will take an artist's name and assign it to a song's artist attribute.
    artist = Artist.find_or_create_by_name(name) # We first set the artist var equal to an instance of our Artist class utilizing '.find_or_create_by_name' with the 'name' as its argument.
    self.artist = artist # We take our instance of self (the song), use .artist to be equal to the value of our artist variable.
    artist.add_song(self) # Finally, we use '.add_song' with 'artist', including self (the song) to associate the song with that artist.
  end

end
