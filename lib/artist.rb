class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def self.find_or_create_by_name(name)
    index = @@all.index {|artist| artist.name == name}
    if index.nil?
      artist = Artist.new(name)
    else
      @@all[index]
    end
  end

  def self.all
    @@all
  end
end
