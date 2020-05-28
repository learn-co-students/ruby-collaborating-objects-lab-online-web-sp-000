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

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
    song
  end

  def self.find_or_create_by_name(name)
    artists = @@all.select {|artist| artist.name == name}
    artists.empty? ? self.new(name) : artists.first
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
