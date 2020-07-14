require 'pry'
class Artist

  attr_accessor :name, :song_list
  @@all = []
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
  @songs << song
  song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(artist_name)
    #  artist =  @@all.find {|n| n.name == artist_name}
  #      return artist if artist
  #      artist = Artist.new(artist_name)
  @@all.find {|n| n.name == artist_name} || Artist.new(artist_name)
  end

  def print_songs
    #  binding.pry
    @songs.each do |song|
      puts song.name
  end
end

end
