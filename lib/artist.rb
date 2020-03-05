class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    found_name = self.all.find { |artist| artist.name == name }
    if found_name
      found_name
    else
      artist = Artist.new(name)
      artist
    end
  end

  def print_songs
    puts songs.map { |song| song.name }
  end

  def self.all
    @@all
  end

end
