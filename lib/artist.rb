class Artist

  attr_accessor :name

#class variable that collects every single instance that was created
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if artist = self.all.find{|artist| artist.name == name}
      artist
    else
      self.new(name)
    end
  end

end
