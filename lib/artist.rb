class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.find_or_create_by_name(artist_name)
    if artist = self.all.find{|artist| artist.name == artist_name}
      artist
    else
      Artist.new(artist_name)
    end
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
