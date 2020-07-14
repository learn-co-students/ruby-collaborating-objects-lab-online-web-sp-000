#class Song
#attr_accessor :name, :genre, :artist

#def initialize(name)
#  @name = name
#end

#def self.new_by_filename(file)
#  song_info = file.chomp("mp3").split(" - ")
#  song = Song.new(song_info[1])
  #song.artist = song_info
#  song.artist.name = song_info[0]
#  song
#end


#end
require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  #  binding.pry
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ") # the array created from the file
    song = Song.new(song_info[1]) #
    song.artist_name = song_info[0]
    song
  end
end
