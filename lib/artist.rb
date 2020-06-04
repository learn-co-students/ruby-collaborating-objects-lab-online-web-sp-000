class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def print_songs
    songs.each {|song| puts song.name }
  end

  def self.find_or_create_by_name(name)
    Artist.all.find {|artist| artist.name == name } ||
    name = Artist.new(name)
  end

  def songs
    Song.all.select {|song| song.artist == self }
  end

end