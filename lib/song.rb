class Song

  attr_accessor :name, :artist
  # attr_reader :artist_name
  
  #since we're writing writer method below
  # * in past, attr macros to denote char of the class - of each instance
  # add any attributes that could themselves be modeled as instances of other class
    # :artist can be associated with a song instance, but it itself can be modeled as an instance of a diff class
    # use attr_reader to expose whatever artist the song has, 
    # but the writer (when we build it custom) allows us to make the association
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  # We'd need this method if relying on Song @@all variable inside our artist songs instance method
  def self.all
    @@all
  end

  def self.new_by_filename(filename) 
    # Parse filename to find sone name and artist name 
    # Eg. filename = 'Michael Jackson - Black or White - pop.mp3'
    parsed = filename.split(" - ")
    artist_name = parsed[0]
    song_name = parsed[1]
    
    # Create new song instance using string from file that's passed
    new_instance = self.new(song_name)
    
    # Associate that new song with an artist - use `artist` attr
    new_instance.artist_name=(artist_name)
    
    # Return new song instance
    new_instance
  end
  
  def artist_name=(artist_name) 
    # if that artist doesn't exist, we would want to find it
    new_or_existing_artist = Artist.find_or_create_by_name(artist_name)
    
    # but now that the artist is assigned to this song
    # we also need to assign this song to the artist
    new_or_existing_artist.add_song(self)
    # looks like this: artist <--- song
    # in actuality: song instance <---- artist instance
  end
  
end