class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end
  
  def self.create_by_name(name)
    Artist.new(name)
  end
  
  def save 
    @@all << self
    self
  end
  
  def print_songs
   songs.each do |song|
     puts song.name
   end
  end
  
end