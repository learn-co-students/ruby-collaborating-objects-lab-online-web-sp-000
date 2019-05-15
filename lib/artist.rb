class Artist
  attr_accessor :name, :songs, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find do |artist|
      if artist.name == name
        true
      else
        false
      end
    end
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end
