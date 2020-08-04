class Artist
  attr_accessor :name, :songs
  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    save
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |s|
      puts s.name
    end
  end
end
 ##add_song
    #takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
