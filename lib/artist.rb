class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_by_name(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.add_song(self)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end
end
