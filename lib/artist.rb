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
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect {|inst| inst.name == name}
    if artist
      artist
    else
      new_artist = Artist.new(name)
      new_artist
    end
  end

    def print_songs
      Song.all.each {|song| puts song.name if song.artist == self}
    end
  end
