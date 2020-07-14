class Artist 
  
  attr_accessor :name
  
  #class variable, where to put all of the artists
  @@all = []
  
  # instance method 
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  # getter for class variable @@all
  # other parts of code can access it
  def self.all
    @@all
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  #if song.artist is equal to instance inside, we should pick it out from list
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    found = find_by_name(name)
    if found == nil
      create_by_name(name)
    else 
      return found
    end 
  end
  
  def self.find_by_name(name)
    @@all.find{|artist| artist.name == name}
  end  
  
  def self.create_by_name(name)
    artist = self.new(name)
    return artist
  end
  
  def print_songs
    songs.each do |song|
      puts song.name 
    end
  end 
  
  
end 




