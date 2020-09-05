class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
#
#   # def songs
#   #   Song.all.select {|song| song.artist == self}
#   # end
#
  def self.find_or_create_by_name(artist_name)
    self.all.detect {|artist| artist.name == artist_name} || Artist.new(artist_name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
