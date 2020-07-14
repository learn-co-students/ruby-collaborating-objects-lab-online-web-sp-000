class Artist

  @@all = []
  attr_accessor :name, :artist

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

  def artist_name
     self.artist.name
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
   end

  def songs
    Song.all.select {|song| song.artist == self}
  end
end
