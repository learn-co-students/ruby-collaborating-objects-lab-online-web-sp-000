class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(artist_name)
    knw_artist = self.all.detect do |spec_artist| 
      spec_artist.name == artist_name
    end
    knw_artist ? knw_artist : self.new(artist_name)
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
  
end