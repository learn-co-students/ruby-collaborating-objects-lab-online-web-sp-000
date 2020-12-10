class Artist
  attr_accessor :name, :song

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
    if self.find(name)
      self.find(name)
    else
      self.new(name)
    end
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
