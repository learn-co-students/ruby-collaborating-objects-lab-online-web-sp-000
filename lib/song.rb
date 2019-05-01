require 'pry'

class Song 
  
  attr_accessor :name, :artist
  
  def initialize(song_name)
    @name = song_name
  end
  
  def self.new_by_filename(filename)
    file_details = filename.split(".")[0].split("-").collect{ |detail| detail.strip }
    song_artist = file_details[0]
    song_name = file_details[1]
    song_genre = file_details[2]
    
    song = Song.new(song_name)
    song.artist = Artist.find_or_create_by_name(song_artist)
    song.artist.add_song(song)
    song
  end
  
end