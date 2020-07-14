class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
      self.all.detect {|artist| artist.name == name} || self.new(name).save
    end

   def songs
     Song.all.select {|song| song.artist == self}
   end

def add_song(song)
  @songs << song
  song.artist = self
  song
end

def self.all
    @@all
  end

def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
