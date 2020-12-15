class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.new(name)
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
