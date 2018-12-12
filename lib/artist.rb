class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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
  
  def print_songs 
    @songs.each do |s|
      puts s.name 
    end
  end
  
  
  def self.find_or_create_by_name(name)
  @@all.each do |a|
    if name == a 
      return a 
    else Artist.new(name)
  end
end
  end
  
end