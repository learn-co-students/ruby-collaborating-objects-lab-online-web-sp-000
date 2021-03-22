class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  def name=(name)
    @name = (name)
  end
  def add_song(song)
    @songs << song
  end
  def songs
    @songs
    #Song.all.select {|song| song.artist}
    #song.artist == artist
  end
  def print_songs
    @songs.each {|song| puts song.name}
  end
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name } || Artist.new(name)

  end
end
