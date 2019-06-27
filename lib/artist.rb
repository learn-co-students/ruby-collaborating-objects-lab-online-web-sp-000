class Artist

  attr_accessor :name, :songs

  @@all=[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    match=@@all.detect{|artist| artist.name=name}
    if match==nil
      self.new(name)
    else
      match
    end
  end

  def print_songs
    self.songs.each{|song| puts song.title}
  end

end
