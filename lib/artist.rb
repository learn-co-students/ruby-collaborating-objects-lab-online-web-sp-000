class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)
    self.all.find { |artist| artist.name == name }
  end

  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
