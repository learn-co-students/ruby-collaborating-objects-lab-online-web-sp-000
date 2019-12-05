class Artist
  attr_accessor :name
  @@all

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    this_artist_songs = []
    Song.all.each do |song|
      if song.artist == self
        this_artist_songs << song
      end
    end
    this_artist_songs
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(artist_name)
    found = false
    guy = nil
    self.all.each do |artist|
      if artist.name == artist_name
        guy = artist
        found = true
      end
    end
    if !found
      guy = Artist.new(artist_name)
    end
    guy
  end

  def print_songs
    songs = []
    self.songs.each do |song|
      songs << song.name
    end
    puts songs
  end
end
