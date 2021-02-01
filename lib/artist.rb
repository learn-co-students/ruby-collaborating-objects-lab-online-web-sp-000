class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    found = self.all.find {|artist| artist.name == name} #find artist for which name matches the passed in argument
    found ? found : Artist.new(name) #if the artist was found, return the artist or else create a new artist with the passed in argument as the name
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end


end
