class Song
  attr_accessor :name, :artist
  
  def initialize(song_name)
    @name = song_name
  end
  
  def self.new_by_filename(file_name)
    array = file_name.split(' - ')
    
    artist_name = array[0]
    song_name = array[1]
    
    artist = Artist.find_or_create_by_name(artist_name)
    
    song = Song.new(song_name)
    
    artist.add_song(song)
    
    song.artist = artist
    
    song
  end
end