class Song 
  attr_accessor :name 
  attr_accessor :artist 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << (self)
  end 
  
  def self.all
    return @@all
  end 
  
  def self.new_by_filename(filename)
    data = filename.split(" - ")
    artist_name = data[0]
    song_name = data[1]
    current_song = Song.new(song_name)
    current_artist = Artist.find_or_create_by_name(artist_name)
    current_artist.add_song(current_song)
    return current_song
  end
    
  def artist_name=(name)
    current_artist = Artist.find_or_create_by_name(name)
    current_artist.add_song(self)
  end


end