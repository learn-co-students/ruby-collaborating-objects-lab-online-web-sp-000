class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.all 
    @@all 
  end
  
  def songs 
    Song.all.select {|song|song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    if !@@all.find{|artist| artist.name == name}
      Artist.new(name)
    else 
      @@all.find{|artist| artist.name == name}
    end
  end
  
  def print_songs 
    Song.all.select do |song|
      if song.artist == self
        puts song.name
      end
    end
  end
  
end 