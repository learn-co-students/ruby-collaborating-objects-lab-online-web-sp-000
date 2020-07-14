class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song (song)
    @songs << song
    song.artist = self
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_or_create_by_name(artist)
    if !(@@all.detect {|obj| obj.name == artist})
      new_artist = Artist.new(artist)
      new_artist
    else
      artist
    end
  end
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
