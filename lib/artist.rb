class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def find(name)
    result = nil 
    
    result 
  end 
  def self.all 
    @@all 
  end 
  def add_song(song)
    song.artist = self 
  end 
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  def self.find_or_create_by_name(name)
    found = self.all.detect {|artist| artist.name == name}
    if(found == nil)
      Artist.new(name)
    else 
      found 
    end 
  end 
  def print_songs
    songsArr = Song.all.select {|song| song.artist == self}
    songsArr.each do |song|
      puts "#{song.name}"
    end 
  end 
end 

