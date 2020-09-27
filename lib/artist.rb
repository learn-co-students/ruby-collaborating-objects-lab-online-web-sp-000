class Artist

  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name}
      @@all.detect {|artist| artist.name == name}
    else self.new(name)
    end
  end

  def print_songs
    puts @songs.collect {|song| song.name}
  end

end
