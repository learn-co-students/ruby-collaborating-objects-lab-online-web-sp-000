class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self #array of all artists
    @songs = []   #array of songs for a particular artist
  end

  def self.all
    @@all
  end

  def add_song(song_name)
    @songs << song_name
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
      if !(self.all.detect {|artist| artist.name == name})
          @artist = self.new(name)
          @artist.name = name
          @artist
      else
          self.all.detect {|artist| artist.name == name}
      end
  end

  def print_songs
    @songs.each do |songTitle|
      puts songTitle.name
    end
  end

end
