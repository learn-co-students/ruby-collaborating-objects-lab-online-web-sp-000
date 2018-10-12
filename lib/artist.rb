class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    existing_artist = @@all.find { |artist|
      artist.name == name
    }
    return existing_artist if existing_artist
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end








end
