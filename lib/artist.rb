class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    save
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self

  end

    def self.find_or_create_by_name(name)
      self.all.detect{|artist| artist.name == name} || self.new(name)

  end

  def self.find(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.create(name)
    self.new(name)
  end

  def print_songs
    songs.each{|song| puts song.name}
  end
end
