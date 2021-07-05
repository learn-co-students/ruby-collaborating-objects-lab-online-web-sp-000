class Song
  
  attr_accessor :name
  attr_reader :artist
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def name
    @name
  end
  
  def artist=(song)
    #setst the artist object to belong to the song 
    #p new_song.artist = @artist
    @artist = song
  end
  
  def self.all
    #returns all existing song instances
    @@all
  end
  
  
   #new_instance = Song.new_by_filename(file_name)
    #  expect(new_instance.artist.name).to eq('Michael Jackson')
  
   def artist_name=(artist)
    #accepts an artist's name, finds or creates an Artist's instance and assigns it to the Song's artist attribute
    set = Artist.find_or_create_by_name(artist)
    self.artist = set
  end
  
  
  def self.new_by_filename(path)
    #creates a new instance of a song from teh file that;s passed
    artist_song_genre = path.split(" - ")
    @artist = Artist.find_or_create_by_name(artist_song_genre[0])
    song_from_file = artist_song_genre[1]
    new_song = self.new(song_from_file)
    @artist.add_song(new_song)
    #associates new song instance with the artist from teh filename
    new_song.artist_name=(@artist.name)
    new_song
  end
  
end