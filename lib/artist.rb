
class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    find_song = self.all.select {|object| object.name == name}
    if find_song == []
      name = Artist.new(name)
    else
      find_song[0]
    end
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end
