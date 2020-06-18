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
    if self.all.select {|artist| artist.name == name}.length == 1
      self.all.select {|artist| artist.name == name}.first
    else
      self.new(name)
      self.all.select {|artist| artist.name == name}.first
    end
  end
  def print_songs
    songs.each {|song| puts"#{song.name}"}
  end
end
