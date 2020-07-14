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
    
    # song.artist = Artist.find_or_create_by_name(artist_name)    # song's artist = artist object
    # song.artist.add_song(song)                                  # artist object has song added to its songs list
    # song.artist.save                                            # save the artist to @@all artists

    song.artist = Artist.find_or_create_by_name(artist_name).tap do |a|
      a.add_song(song)
      a.save
    end
    
    song                                                        # return the song instance
  end
  
end