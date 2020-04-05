class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    songs
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  def self.find_or_create_by_name(name)
    temp_artist = nil
    self.all.each do |artist|
      if artist.name == name
        temp_artist = artist
      end
    end
    temp_artist == nil ? temp_artist = self.new(name) : temp_artist
  end
end
