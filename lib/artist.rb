class Artist
  attr_accessor :name, 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
    song
  end
  
  def find_or_create_by_name(name)
    if self.all.find{|artist| artist.name == name} != nil
      found_artist = self.all.find{|artist| artist.name == name}
      found_artist
    else
      new_artist = Artist.new(name)
      new_artist
    end
  end
  
  def songs
    Song.all.select{|song|song if song.artist == self}
  end
  
  def print_songs
    puts songs
  end
end