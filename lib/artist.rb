class Artist
  attr_accessor :name, :songs

  @@all = [] #creates new array of all song instances

  def initialize(name) #accepts a name for the artist
    @name = name #sets the artist name
    @songs = []
    save
  end

  def self.all #returns all existing Artist instances
    @@all
  end

  def add_song(song) #keeps track of an artist's songs
    @songs << song
  end

  def self.create(name) #returns artist instance,
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find(name) #finds/creates unique object an artist by name
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name) #creates new instance of artist if none exist
    self.find(name) || self.create(name)
  end

  def print_songs #lists all of artists songs
    songs.each { |song| puts song.name }
  end

  def save #saves all instances of artist self and shovels them into the song array 
    @@all << self
  end

  def songs  #lists all songs that belong to this artist
    @songs
  end
end
