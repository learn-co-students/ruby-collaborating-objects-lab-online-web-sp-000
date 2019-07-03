class Artist
  attr_accessor :name, :songs         #name/song attributes
  @@all = []                  #Class var set to an array

  def initialize(name)
    @name = name              #instance var set at instantiation
    @songs = []
  end

  def self.all
    return @all
  end

  def save
    @@all << self                    #adds the artist instance to the @@all class variable
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name

  end

  def print_songs
    songs.each {|song| puts song}
  end
end
