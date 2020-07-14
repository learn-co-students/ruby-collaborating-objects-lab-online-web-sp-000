class Artist
  attr_accessor :name, :song
  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song = Song.new(song)
    self.songs << song.name
    song.artist = self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.all.find {|person| person.name = name} || self.new(name)
  end

  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end

end
