class Artist
  @@all =[]
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name == name}
    if artist.nil?
      artist = Artist.new(name)
    end
    artist
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
