
require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.artist(artist_object)
    self.artist = artist_object
  end

  def self.new_by_filename(filename)
    music_arr = filename.split('-')
    song_name_str = music_arr[1].strip
    artist_name_str = music_arr[0].strip
    new_song = Song.new(song_name_str)
    artist = Artist.new(artist_name_str)
    new_song.artist = artist
    artist.add_song(new_song)
    new_song
    # binding.pry
  end

  def artist_name=(name1)
    self.artist = Artist.find_or_create_by_name(name1)
  end

  

end
