class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.find { |i| i.name == name }
      @@all.find { |i| i.name == name }
    else
      new = self.new(name)
      @@all << new
      new
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
