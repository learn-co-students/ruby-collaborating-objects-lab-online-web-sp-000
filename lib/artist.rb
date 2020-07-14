class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|x| x.name == name} == nil
      artist = Artist.new(name)
    else
      @@all.find {|x| x.name == name}
    end
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each {|x| puts x.name}
  end

end
