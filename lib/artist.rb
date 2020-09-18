class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
   @@all << self
  end

  def self.all
    @@all
  end

  def self.add_song
    self.songs << song
  end

  def songs
    @songs
  end

def self.find_or_create_by_name(name)   #
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def print_songs
     self.songs.each { |song| song.name}
   end
end
