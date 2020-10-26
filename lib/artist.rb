class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name == name} == nil
      name = self.new(name)
    else
      self.all.find {|artist| artist.name == name}
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
