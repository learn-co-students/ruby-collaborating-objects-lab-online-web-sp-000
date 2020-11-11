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

  def add_song(song)
    new_song = Song.new(song)
    new_song.artist = self
    self.songs
  end

  def songs
    Song.all.find_all do |song|
      song.artist == self
    end
    # Song.all.select { |song| Artist.all.name == self }
    # Song.all.select { |song| @artist == self }
  end

# recently edited:
  def self.find_or_create_by_name(artist_name)
    if Artist.all.name == artist_name
      return Artist.all.name.self
    else
      Artist.new(artist_name)
    end
  end

end
