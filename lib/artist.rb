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
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    result = nil
    self.all.each do |artist|
      result = artist if artist.name == name
    end

    if result.nil?
      self.new(name)
    else
      result
    end
  end

  def print_songs
    artist_songs = Song.all.select {|song| song.artist == self}
    artist_songs.each do |song|
      puts song.name
    end
  end

end
