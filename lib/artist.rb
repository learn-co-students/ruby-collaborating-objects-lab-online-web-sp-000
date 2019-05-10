class Artist
  attr_accessor :name, :songs 
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_exist = all.find { |artist| artist.name == name }
    if artist_exist
      artist_exist
    else
      artist_exist = self.new(name)
    end
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
  
end
