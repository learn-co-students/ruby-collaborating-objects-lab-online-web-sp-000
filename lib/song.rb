# Action Bronson - Larry Csonka - indie.mp3

class Song
  attr_reader :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def name=(name)
    @name = name 
  end
  
  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file)
    field_arr = file.split(" - ")     # ["Michael Jackson", "Black or White", "pop.mp3"]
    artist_name = field_arr[0]
    song_title = field_arr[1]
    song = self.new(song_title)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)
    song.artist.save
    song
  end
  
end