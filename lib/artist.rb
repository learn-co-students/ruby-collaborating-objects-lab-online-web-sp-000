

class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all    
  end

  def self.find_or_create_by_name(name)
    @@all.detect {|artist| artist.name == name} || artist = Artist.new(name)
    #artist
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
  end

  def print_songs
    @songs.each{|s| puts s.name}
  end


end