

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end


  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
  s = Song.new(song_name)
  self.add_song(s)
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect{|artist| artist.name == name}
    if !artist
      artist = Artist.new(name)
    end
    return artist
  end

  def add_song(song)
    #self.songs << song
    song.artist = self
    #binding.pry
  end

  def add_song_by_name(song_name)
  s = Song.new(song_name)
  self.add_song(s)
  end
  def self.all
    @@all
  end
  
  def print_songs
    self.songs.each { |song| puts song.name}
  end

end
