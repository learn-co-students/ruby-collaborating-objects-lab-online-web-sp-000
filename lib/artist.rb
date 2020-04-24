class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all.uniq
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name == name} #instance found in the @@all where name is found
    if artist
      artist #returns the instance
    else
      new = self.new(name) #creates new instance Artist, returns the instance
      new.save
      new
    end
  end

  def print_songs
    songs.each do |song|
      puts "#{song.name}"
    end
  end
end
