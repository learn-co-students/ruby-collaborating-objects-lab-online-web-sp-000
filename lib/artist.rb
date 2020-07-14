class Artist
attr_accessor :name, :songs

  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    @@all.detect { |artist| artist.name == name}
  end

  def self.create_by_name(name)
    Artist.new(name)
  end

  def self.find_or_create_by_name(name)
    artist = self.find_by_name(name)
    artist = self.create_by_name(name) if !artist
    artist
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
