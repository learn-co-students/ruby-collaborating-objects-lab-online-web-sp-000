require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist, :artist_name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    artist.songs << self
  end

  def self.all
    @@all    
  end

  def self.new_by_filename(file)
    #binding.pry
    array = file.split(" - ")
    song_name = array[1]
    binding.pry
    new_song = Song.new(song_name)
    artistx = array[0]
    new_song_artist = Song.artist_name(artistx) 

    
  end

  def self.artist_name(artist)
      artistx = Artist.find_or_create_by_name(artist)
      artistx
  end

end























# def self.new_by_filename(file_name)
#   #Action Bronson - Larry Csonka - indie.mp3
#   file =[]
#   file = file_name.split(" - ")
# #binding.pry
#   song = Song.new(file[1])
#   song.artist = self.artist_name(file[0])

# end

# def self.artist_name=(artist)
#   Artist.find_or_create_by_name(artist)
# end
