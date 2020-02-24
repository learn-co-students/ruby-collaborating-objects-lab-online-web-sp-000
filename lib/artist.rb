class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|s| s.artist == self}
  end

  def self.find_or_create_by_name(artist_name)
    self.all.find {|a| a.name == artist_name} || self.new(artist_name)
  end

  def print_songs
    self.songs.each {|s| puts s.name}
  end

  def self.all
    @@all
  end
end
