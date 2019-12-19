class Artist
  
  attr_accessor :name
  
   @@all = []
   
  def initialize(name)
    @name = name
    save
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

  def self.find_by_name(name)
  self.all.find{|artist| artist.name == name}
  end

def self.find_or_create_by_name(name)
  find_by_name(name) || self.new(name)
end

def print_songs
  songs.each do |song|
    puts song.name
  end
end

def add_song(song)
    self.songs << song
    song.artist = self
  end
end
