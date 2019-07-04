class Artist
  attr_accessor :name, :songs         #name/song attributes
  @@all = []                          #Class var set to an array

  def initialize(name)
    @name = name                      #instance var set at instantiation
    @songs = []
  end

  def self.all
    return @all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self                      #adds the artist instance to the @@all class variable
  end

  def self.find_or_create_by_name(name)       #name parameter
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
    #self.find(name) ? self.find(name) : self.create(name)       #Ternary operator to maintain uniqueness

  def self.find(name)
    self.all.detect {|artist| artist.name == name}          #calls .self.all method in which returns @@all, and we search it
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    return artist
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
