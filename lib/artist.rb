
class Artist
  @@all = []
  attr_accessor :name, :songs, :artist
  def initialize (name)
    @name = name
    @songs = []
    save
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
  def songs
    @songs
  end
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  def self.find(name)
      @@all.find {|artist| artist.name == name}
    end

  def self.create(name)
    artist = self.new(name)
    artist
  end

  def print_songs()
     puts @songs.collect {|song| song.name}
  end
end
