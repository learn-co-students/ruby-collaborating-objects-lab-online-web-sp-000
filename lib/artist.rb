class Artist
  attr_accessor :name, :songs         #name/song attributes
  @@all = []                          #Class var set to an array

  def initialize(name)
    @name = name                      #instance var set at instantiation
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    return @all
  end

  def save
    @@all << self                      #adds the artist instance to the @@all class variable
  end

  def self.find_or_create_by_name(name)       #name parameter
    self.find(name) ? self.find(name) : self.create(name)       #Ternary operator to maintain uniqueness
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
