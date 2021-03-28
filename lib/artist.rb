class Artist

  attr_accessor :name, :songs
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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
    the_artist = self.all.find {|artist| artist.name == name}
    if the_artist == nil
      the_artist = self.new(name)
      the_artist.save
    end
    the_artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end