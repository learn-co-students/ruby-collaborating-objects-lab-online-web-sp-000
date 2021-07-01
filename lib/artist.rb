class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name) #accepts arg of name
    #storing name of artist (local var), assigning to instance var so you can access it
    @name = name 
    @@all << self # artist class to store array (new artist)
    # @songs = [] (method 2)
  end
  
  def self.all # return all exisiting Aritst instnaces
    @@all
  end
  
  def songs
    #Method 1:
    Song.all.select {|song| song.artist == self} 
      # Instead of storing each artist's songs inside of an instance variable
      # we take out the necessity of storing that data by calling upon 
      # the Song class to return all the song instances, 
      # which we then iterate thru to find the songs with 
      # an artist matching whatever instance of artist called this method
   
    #Method 2:
    # @songs  
      #(AVOID cuz) two diff sources of truth, song instance stored in artist, also stored in song class. What if you go into songs class and delete songs, it won't be updated in Artist's @song var; 
      # Song class responsible for holding relationship between song and artist
      
    # - TEST -
      # => [#<Song:0x0000000002f8ead8
        # @artist=#<Artist:0x0000000002f8eb28 @name="Michael Jackson">,
        # @name="Dirty Diana">,
      #<Song:0x0000000002f8ea88
        # @artist=#<Artist:0x0000000002f8eb28 @name="Michael Jackson">,
        # @name="Billie Jean">]
  end
  
  # Keeps track of an artist's songs (add song to Artist's list of songs)
  def add_song(song) 
    # receive -> song = Song.new(name) -> song is an object
    song.artist = self 
    
    #- TEST -
    # run song in irb => #<Song:0x0000000001979bf8 @artist=#<Artist:0x0000000001979c48 @name="Michael Jackson">, @name="Rock With You">
  end
  
  # Given an artist name, iterate through all Artists and 
    # return the artist instance with that name (if exists)
    # If it does not, instantiate a new Artist with that name
  def self.find_or_create_by_name(name) #name is str
    #  if artist.name == name #> nil, create new isntance
    Artist.all.find{|artist| artist.name == name} || Artist.new(name)
  end
  
  # Lists all of the artist's songs
  def print_songs
    songs.each { |song_instance| puts song_instance.name }
  end
end