class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    if Artist.all.any? {|element| element.name = name} == true
      Artist.all.find {|artist| return artist if artist.name = name}
    else
      Artist.new(name)
    end
  end

  def print_songs
    puts @songs.map {|song| song.name}
  end

end
