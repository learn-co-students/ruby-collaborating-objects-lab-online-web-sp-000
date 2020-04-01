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
    Song.all.select {|song| song.artist == self}
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    my_artist = @@all.find {|artist| artist.name == artist_name}
    my_artist == nil ? self.new(artist_name) : my_artist
  end

end
