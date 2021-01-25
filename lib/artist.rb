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

  def songs
    Song.all.select {|song| song.artist == self }
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|a| a.name == name}
    return artist.nil? ? Artist.new(name) : artist
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
