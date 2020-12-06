require 'pry'

class Artist
  attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(artist_name)
    existing_artist = self.all.find {|artist_instance| artist_instance.name == artist_name}
    if existing_artist == nil
      new_artist = self.new(artist_name)
      new_artist
    else
      existing_artist
    end
  end

  def print_songs
    puts self.songs.collect {|song| song.name}
  end

end
