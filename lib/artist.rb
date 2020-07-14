=begin
class Artist 
  attr_accessor :name 
  
    @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song
    song.artist = self
  end
  
  def self.find_or_create_by _name(name)
    if(self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
  end
   
  def print_songs
     songs.each {|song| puts song.name}
  end
  
end

=end

class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    save
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
    #self.find(name) ? self.find(name) : self.new(name)
    if(self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
  end
  

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end


  