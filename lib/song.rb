require 'pry'
class Song
attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    artist_name = Artist.find_or_create_by_name(name)
    @artist = artist_name
    #check to see if artist exists and and assign artist if exists
    #if doesn't exist, create artist instances

  end

  def self.new_by_filename(file_name)
    #binding.pry
    parsed_song_name = file_name.split(" - ")[1]
    parsed_artist_name = file_name.split(" - ")[0]
    song = Song.new(parsed_song_name)
    song.artist_name=(parsed_artist_name)
    song
  end


end
