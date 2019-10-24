class Artist
    attr_accessor :name, :all
    @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name
    if (self.artist.nil?)
      @@all << self.artist = Artist.new(name)
    else
      @@all << self.artist.name = name
    end
    return self.artist.name
  end

  def print_songs(name)
    self.artist.name.all
  end
end
