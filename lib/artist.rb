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
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
      self.find(name)
  end

  def self.find(name)
    @@all.find {|artist| artist.name == name }
  end

  def self.create(name)
    artist = self.new(name)
    artist
  end

  def save
    @@all << self
  end


  def print_songs
    puts @songs.collect {|song| song.name}
  end

end