class Artist
  
  attr_accessor :name
  
   @@all = []
   
  def initialize(name)
    @name = name
    save
  end
  
   
  def add_song(song)
    song.artist = self
  end
  
  def self.all
    @@all
end

def save
  self.class.all << self
end

 def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.create
  song = Song.new
  song.save
  song
  end

  def self.create_by_name(name)
  artist = self.create
  artist.name= name
  artist
  end

  def self.find_by_name(name)
  self.all.find{|artist| artist.name == name}
  end

def self.find_or_create_by_name(name)
  find_by_name(name) || create_by_name(name)
end

def print_songs
  
end

end
