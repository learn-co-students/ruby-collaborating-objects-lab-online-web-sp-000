class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
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

  def self.find_or_create_by_name(name)
    if (artist = @@all.find {|artist| artist.name == name})
      artist
    else
      artist = Artist.new(name)
      artist
    end
  end

  def print_songs
    puts songs.map {|song| song.name}
  end

end
