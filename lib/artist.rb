class Artist
  attr_accessor :name
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

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song|song.artist == self}
  end

  def self.find_or_create_by_name(artist_name)
    self.find(artist_name) ? self.find(artist_name) : self.new(artist_name)
  end

  def self.find(artist_name)
    self.all.find {|artist| artist.name == artist_name}
  end

  def print_songs
    Song.all.select {|song| puts song.name if song.artist == self}
  end

end
